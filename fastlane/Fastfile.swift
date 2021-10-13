// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func customLane() {
	desc("Description of what the lane does")
        let bundle = "a.bitrise-spm-caching"
//		runTests(
//            workspace: .userDefined(App.workspace),
//            scheme: .userDefined(platform.scheme),
//            devices: .userDefined([device.name]),
//            clean: true,
//            disableXcpretty: .userDefined(true),
//            outputDirectory: Fastlane.tests,
//            outputStyle: "raw",
//            outputTypes: "",
//            buildlogPath: Fastlane.logs,
//            shouldZipBuildProducts: true,
//            buildForTesting: .userDefined(true),
//            configuration: .userDefined(configuration.name),
//            xcargs: "-quiet",
//            skipSlack: true
//        )
	}
}
