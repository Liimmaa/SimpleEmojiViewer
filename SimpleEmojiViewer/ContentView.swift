//
//  ContentView.swift
//  SimpleEmojiViewer
//
//  Created by Chioma Amanda Mmegwa  on 20/06/2023.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 💪🏽, 🌚, 🥹, 😃, 🥂, 🎉, 👀, 😇, 😂, 🥳
}

enum EmojiExtra: String, CaseIterable {
    case 💪🏽, 🌚, 🥹, 😃, 🥂, 🎉, 👀, 😇, 😂, 🥳
}
 
struct ContentView: View {
    @State var emoji: Emoji = .🌚
    @State var emojiExtra: EmojiExtra = .😇
     
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text(emoji.rawValue)
                        .font(.system(size: 100))
                    Text(emojiExtra.rawValue)
                        .font(.system(size: 100))
                }
                
                VStack(spacing: 20) {
                    Picker("Select Emoji", selection: $emoji) {
                        ForEach(Emoji.allCases, id: \.self) { emoji in
                            Text(emoji.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    Picker("Select Emoji", selection: $emojiExtra) {
                        ForEach(EmojiExtra.allCases, id: \.self) { emoji in
                            Text(emoji.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
            }
            .navigationTitle("Emojis")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
