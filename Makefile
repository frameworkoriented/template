.PHONY: default

spec:
	xcodebuild -workspace XXXXX.xcworkspace -scheme XXXXX -destination "platform=iOS Simulator,name=iPhone 6,OS=10.0" CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO ONLY_ACTIVE_ARCH=NO build test | xcpretty
build:
	xcodebuild -workspace "XXXXX.xcworkspace" -scheme "XXXXX" -destination "platform=iOS Simulator,OS=10.0,name=iPhone 6" -configuration "Debug" ONLY_ACTIVE_ARCH="NO" CODE_SIGNING_REQUIRED="NO" CODE_SIGN_IDENTITY="" | xcpretty
	xcodebuild -workspace "XXXXX.xcworkspace" -scheme "XXXXX" -destination "platform=OS X,arch=x86_64" -configuration "Debug" ONLY_ACTIVE_ARCH="NO" CODE_SIGNING_REQUIRED="NO" CODE_SIGN_IDENTITY="" | xcpretty
	xcodebuild -workspace "XXXXX.xcworkspace" -scheme "XXXXX" -destination "platform=tvOS Simulator,OS=10.0,name=Apple TV 1080p" -configuration "Debug" ONLY_ACTIVE_ARCH="NO" CODE_SIGNING_REQUIRED="NO" CODE_SIGN_IDENTITY="" | xcpretty
	xcodebuild -workspace "XXXXX.xcworkspace" -scheme "XXXXX" -destination "OS=3.0,name=Apple Watch Series 2 - 38mm" -configuration "Debug" ONLY_ACTIVE_ARCH="NO" CODE_SIGNING_REQUIRED="NO" CODE_SIGN_IDENTITY="" | xcpretty
default: 
	lint
