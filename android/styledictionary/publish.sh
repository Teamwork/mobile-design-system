#!/bin/bash

if [ -z "$1" ]; then
	echo "ERROR: Specify the module name or use 'all' to publish all modules"
	exit 1
fi

echo "Publishing modules to Teamwork Maven"

if [ "$1" != "all" ]; then
	MOD="$1:"
fi

./gradlew "${MOD}clean"
./gradlew "${MOD}assemble"
./gradlew "${MOD}generatePomFileForAarPublication"
./gradlew "${MOD}generatePomFileForAarDebugPublication"
./gradlew "${MOD}artifactoryPublish"
