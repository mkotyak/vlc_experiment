import SwiftUI

struct ContentView: View {
    let player: VLCPlayer

    var body: some View {
        player.ignoresSafeArea()
    }
}
