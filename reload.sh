set -e
# ビルド
xcodebuild -workspace Typut.xcodeproj/project.xcworkspace -scheme Typut clean archive -archivePath build/archive.xcarchive | xcpretty

# 上書き
sudo rm -rf /Library/Input\ Methods/Typut.app
sudo cp -r build/archive.xcarchive/Products/Applications/Typut.app /Library/Input\ Methods/
# 再起動
pkill "Typut"
