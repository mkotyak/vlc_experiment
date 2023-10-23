import MobileVLCKit
import SwiftUI

struct VLCPlayerView {
    private let mediaPlayer = VLCMediaPlayer()
    private var mediaUrl: URL?

    init(mediaUrl: URL?) {
        self.mediaUrl = mediaUrl
    }
}

// MARK: - UIViewRepresentable

extension VLCPlayerView: UIViewRepresentable {
    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        let uiView = UIView()
        mediaPlayer.drawable = uiView
        return uiView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let url = mediaUrl {
            mediaPlayer.media = VLCMedia(url: url)
            mediaPlayer.play()
        } else {
            mediaPlayer.stop()
        }
    }
}
