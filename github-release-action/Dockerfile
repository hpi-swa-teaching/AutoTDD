FROM debian:9.5-slim

LABEL "com.github.actions.name"="GitHub Create Release"
LABEL "com.github.actions.description"="Action for creating a GitHub release."
LABEL "com.github.actions.icon"="merge"
LABEL "com.github.actions.color"="gray-dark"

RUN apt-get update && apt-get install -y \
	--no-install-recommends \
		ca-certificates \
		curl \
		unzip \
		git \
		bash \
		bc \
		jq
		
RUN	apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*

ADD github-create-release.sh /github-create-release.sh
ENTRYPOINT ["/github-create-release.sh"]
