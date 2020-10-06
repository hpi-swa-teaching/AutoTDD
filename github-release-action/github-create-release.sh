#!/bin/bash

# ARGUMENTS
#	TAG, TITLE, TARGET, DESCRIPTION, FILE (optional), FILE_CONTENT_TYPE (required only if file set)
#	If latest commit is in the form '{tag}\n\n{title}\n\n{description}' and these parts can be parsed, the fields will be set accordingly.

echo "Starting action."

set -e
set -o pipefail

COMMIT_MESSAGE=$(git log -n 1 --pretty=%B) 

readarray -t PARSED_MSG <<<"$COMMIT_MESSAGE"

PARSEDTAG=$(echo ${PARSED_MSG[0]})
PARSEDTITLE=$(echo ${PARSED_MSG[2]})
PARSEDDESCRIPTION=$(echo ${PARSED_MSG[4]})

# Ensure that the TAG is set
if [[ -z "$PARSEDTAG" ]]; then
	if [[ -z "$TAG" ]]; then
		echo "TAG env variable not set or commit message malformed."
		exit 1
	fi
else
	TAG="$PARSEDTAG"
fi

# Ensure that the TITLE is set
if [[ -z "$TITLE" ]]; then
	if [[ -z "$TITLE" ]]; then
		echo "TITLE env variable not set or commit message malformed."
		exit 1
	fi
else 
	TITLE="$PARSEDTITLE"
fi

# Ensure that the DESCRIPTION is set
if [[ -z "$DESCRIPTION" ]]; then
	if [[ -z "$DESCRIPTION" ]]; then
		echo "DESCRIPTION env variable not set or commit message malformed."
		exit 1
	fi
else
	DESCRIPTION="$PARSEDDESCRIPTION"
fi

# Ensure that the TARGET is set
if [[ -z "$TARGET" ]]; then
	echo "TARGET env variable not set."
	exit 1
fi

# Ensure that the GITHUB_TOKEN secret is included
if [[ -z "$GITHUB_TOKEN" ]]; then
	echo "Set the GITHUB_TOKEN env variable."
	exit 1
fi

echo "Creating Release from message: $COMMIT_MESSAGE (title: $TITLE, tag: $TAG, target: $TARGET, description: $DESCRIPTION)"

JSON='{
	"tag_name": "@rel_tag@",
	"target_commitish": "@rel_target@",
	"name": "@rel_title@",
	"body": "@rel_description@",
	"draft": false,
	"prerelease": false
}'
JSON=$(echo "$JSON" | sed "s/@rel_tag@/$TAG/")
JSON=$(echo "$JSON" | sed "s/@rel_target@/$TARGET/")
JSON=$(echo "$JSON" | sed "s/@rel_title@/$TITLE/")
JSON=$(echo "$JSON" | sed "s/@rel_description@/$DESCRIPTION/")

curl --request POST \
	--url "https://api.github.com/repos/$GITHUB_REPOSITORY/releases" \
	--header "Authorization: Bearer $GITHUB_TOKEN" \
	--header 'Content-Type: application/json' \
	--data "$JSON"
	  

# Ensure that the FILE is set
if [[ -z "$FILE" ]]; then
	echo "FILE env variable not set, no file will be uploaded."
else
	# Ensure that the CONTENT_TYPE is set
	if [[ -z "$FILE_CONTENT_TYPE" ]]; then
		echo "FILE_CONTENT_TYPE env variable not set."
		exit 1
	fi
	echo "Uploading file: $FILE, content-type: $FILE_CONTENT_TYPE"
		
	RELEASE_ID=$(jq --raw-output '.release.id' $GITHUB_EVENT_PATH)
	curl \
	  -sSL \
	  -XPOST \
	  -H "Authorization: token $GITHUB_TOKEN" \
	  -H "Content-Length: $(stat -c%s "$FILE")" \
	  -H "Content-Type: $FILE_CONTENT_TYPE" \
	  --upload-file "$FILE" \
	  "https://uploads.github.com/repos/${GITHUB_REPOSITORY}/releases/${RELEASE_ID}/assets?name=$(basename $FILE)"
fi
  
echo "Process finished."
