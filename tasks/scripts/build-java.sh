#!/bin/bash -ex

SOURCE_FOLDER="$1"
OUTPUT_FOLDER="$2"

echo "=============== BUILD ==============="

# 1- Use Gradle for building the application
# Entering into project root folder
cd ${SOURCE_FOLDER}

chmod +x gradlew

# Build
./gradlew clean build

# 2- Copy built files to the output folder
cp -v ${SOURCE_FOLDER}/build/libs/*.jar ${OUTPUT_FOLDER}
cp -v ${SOURCE_FOLDER}/manifest.yml ${OUTPUT_FOLDER}

echo "Build done!"
