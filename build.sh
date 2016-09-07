DERIVED_DATA=${1:-/tmp/Mixed}
echo "Derived data location: $DERIVED_DATA";

set -o pipefail &&
rm -rf $DERIVED_DATA &&
time xcodebuild clean test \
    -workspace ObjectiveCSampleApp/ObjectiveCSampleApp.xcworkspace \
    -scheme ObjectiveCSampleApp \
    -sdk iphonesimulator9.3 \
    -derivedDataPath $DERIVED_DATA \
    -destination 'platform=iOS Simulator,name=iPhone 6,OS=9.3' \
    | xcpretty
