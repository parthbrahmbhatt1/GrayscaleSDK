{\rtf1\ansi\ansicpg1252\cocoartf2821
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 #!/bin/bash\
\
# -----------------------------------------\
# build_and_test.sh\
# Automates building and testing your iOS SDK\
# -----------------------------------------\
\
# -----------------------------\
# Prerequisites\
# -----------------------------\
# - macOS with Xcode command line tools installed\
# - xcodebuild available in $PATH\
# - Your Xcode project should have:\
#     - An SDK target (e.g., GrayscaleSDK)\
#     - A test target (e.g., GrayscaleSDKTests)\
# -----------------------------\
# Usage:\
#     chmod +x build_and_test.sh\
#     ./build_and_test.sh\
# -----------------------------\
\
# -----------------------------\
# Configuration\
# -----------------------------\
SCHEME="GrayscaleSDK"\
SDK="iphonesimulator"\
DESTINATION="platform=iOS Simulator,name=iPhone 15,OS=latest"\
PROJECT="GrayscaleSDK.xcodeproj"\
CONFIGURATION="Debug"\
\
echo "Building scheme: $SCHEME"\
\
# -----------------------------\
#  Build the SDK\
# -----------------------------\
xcodebuild \\\
  -project "$PROJECT" \\\
  -scheme "$SCHEME" \\\
  -configuration "$CONFIGURATION" \\\
  -sdk "$SDK" \\\
  -destination "$DESTINATION" \\\
  clean build | tee build.log\
\
BUILD_STATUS=$\{PIPESTATUS[0]\}\
\
if [ $BUILD_STATUS -ne 0 ]; then\
  echo "Build failed"\
  exit $BUILD_STATUS\
else\
  echo "Build succeeded"\
fi\
\
# -----------------------------\
#  Run Unit Tests\
# -----------------------------\
echo "Running tests..."\
\
xcodebuild \\\
  -project "$PROJECT" \\\
  -scheme "$SCHEME" \\\
  -sdk "$SDK" \\\
  -destination "$DESTINATION" \\\
  test | tee test.log\
\
TEST_STATUS=$\{PIPESTATUS[0]\}\
\
if [ $TEST_STATUS -ne 0 ]; then\
  echo "Unit tests failed"\
  exit $TEST_STATUS\
else\
  echo "All unit tests passed"\
fi\
}