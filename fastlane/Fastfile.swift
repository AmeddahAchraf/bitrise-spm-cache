// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    func clearDerivedData(derivedDataPath: String = "~/Library/Developer/Xcode/DerivedData") {
        let derivedDataPathArg = RubyCommand.Argument(name: "derived_data_path", value: derivedDataPath, type: nil)
        let array: [RubyCommand.Argument?] = [derivedDataPathArg]
        let args: [RubyCommand.Argument] = array
            .filter { $0?.value != nil }
            .compactMap { $0 }
        let command = RubyCommand(commandID: "", methodName: "clear_derived_data", className: nil, args: args)
        _ = runner.executeCommand(command)
    }

    func customLane() {
        //clearDerivedData()
        runTests(clean: true, clonedSourcePackagesPath: "SPM_checkouts")
    }
}
