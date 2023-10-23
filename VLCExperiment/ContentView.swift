import SwiftUI

struct ContentView: View {
    var mediaURL: URL? = URL(string: "https://stream.ecable.tv/afrobeats/index.m3u8")

    var body: some View {
        VLCPlayerView(mediaUrl: mediaURL)
            .ignoresSafeArea()
    }
}
