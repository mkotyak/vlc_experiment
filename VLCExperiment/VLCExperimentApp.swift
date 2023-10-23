import SwiftUI

@main
struct VLCExperimentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(player: .init(
                mediaUrl: URL(string: "https://stream.ecable.tv/afrobeats/index.m3u8")
            ))
        }
    }
}
