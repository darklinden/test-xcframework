#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
PROJECT_DIR="$(realpath "${BASEDIR}")"

PROJECT_NAME="demo"
PROJECT_DIR="${PROJECT_DIR}/${PROJECT_NAME}"
echo "PROJECT_DIR: ${PROJECT_DIR}"

cd "$PROJECT_DIR" || exit

# lib_static.xcframework:
# - Info.plist
# - ios-arm64_x86_64-simulator
#     - lib_static.a  #This is the fat lib I mentioned
# - ios-arm64
#     - lib_static.a

#Gerenare device framework
echo ""
echo "****************************************************************"
echo "*                 archive demo arm64                           *"
echo "****************************************************************"
echo "xcodebuild archive -scheme ${PROJECT_NAME}"
echo "    -archivePath '${PROJECT_DIR}/build/${PROJECT_NAME}-iphoneos.xcarchive'"
echo "    -sdk iphoneos"
echo "    -arch arm64"
echo "    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES"
rm -rf "${PROJECT_DIR}/build/${PROJECT_NAME}-iphoneos.xcarchive"
xcodebuild archive -scheme ${PROJECT_NAME} \
    -archivePath "${PROJECT_DIR}/build/${PROJECT_NAME}-iphoneos.xcarchive" \
    -sdk iphoneos \
    -arch arm64 \
    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

#Generate simulator framework
echo "****************************************************************"
echo "*           archive demo x86_64 simulator                      *"
echo "****************************************************************"
echo "xcodebuild archive -scheme ${PROJECT_NAME}"
echo "    -archivePath '${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive'"
echo "    -sdk iphonesimulator"
echo "    -arch x86_64"
echo "    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES"
rm -rf "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive"
xcodebuild archive -scheme ${PROJECT_NAME} \
    -archivePath "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive" \
    -sdk iphonesimulator \
    -arch x86_64 \
    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

#Generate simulator framework
echo "****************************************************************"
echo "*           archive demo arm64 simulator                      *"
echo "****************************************************************"
echo "xcodebuild archive -scheme ${PROJECT_NAME}"
echo "    -archivePath '${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive'"
echo "    -sdk iphonesimulator"
echo "    -arch x86_64"
echo "    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES"
rm -rf "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive"
xcodebuild archive -scheme ${PROJECT_NAME} \
    -archivePath "${PROJECT_DIR}/build/${PROJECT_NAME}-iossimulator.xcarchive" \
    -sdk iphonesimulator \
    -arch arm64 \
    SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES
