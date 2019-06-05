#!/bin/bash

# ARGUMENTS
#	TAG, TITLE, TARGET, DESCRIPTION, FILE (optional), FILE_CONTENT_TYPE (required only if file set)

echo "Starting action."

set -e
set -o pipefail

COMMIT_MESSAGE = $(echo git log -n 1 --pretty=%B) 

# Ensure that the TAG is set
if [[ -z "$TAG" ]]; then
	echo "TAG env variable not set."
	exit 1
fi

# Ensure that the TITLE is set
if [[ -z "$TITLE" ]]; then
	echo "TITLE env variable not set."
	exit 1
fi

# Ensure that the TARGET is set
if [[ -z "$TARGET" ]]; then
	echo "TARGET env variable not set."
	exit 1
fi

# Ensure that the DESCRIPTION is set
if [[ -z "$DESCRIPTION" ]]; then
	echo "DESCRIPTION env variable not set."
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
JSON=$(echo "$JSON" | sed "s/@rel_title@/Release $TITLE/")
JSON=$(echo "$JSON" | sed "s/@rel_description@/$DESCRIPTION/")

#curl --request POST \
#	--url "https://api.github.com/repos/$GITHUB_REPOSITORY/releases" \
#	--header "Authorization: Bearer $GITHUB_TOKEN" \
#	--header 'Content-Type: application/json' \
#	--data "$JSON"
	  

# Ensure that the FILE is set
if [[ -z "$FILE" ]]; then
	echo "FILE env variable not set, no file will be uploaded."
	exit 1
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
