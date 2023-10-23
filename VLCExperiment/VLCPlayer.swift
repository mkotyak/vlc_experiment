import MobileVLCKit
import SwiftUI

struct VLCPlayer {
    private let player: VLCMediaPlayer = .init()
    private var mediaUrl: URL?

    init(mediaUrl: URL?) {
        self.mediaUrl = mediaUrl
    }
}

// MARK: - UIViewRepresentable

extension VLCPlayer: UIViewRepresentable {
    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        let uiView = UIView()
        player.drawable = uiView

        return uiView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let url = mediaUrl {
            player.media = VLCMedia(url: url)
            player.play()
        } else {
            player.stop()
        }
    }
}
