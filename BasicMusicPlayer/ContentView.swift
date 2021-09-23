//
//  ContentView.swift
//  BasicMusicPlayer
//
//  Created by AMStudent on 9/23/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            HStack {
                Text("Music Player")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
            
            HStack {
                Button(action: {
                    audioPlayer.play()
                }) {
                    Text("play")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                    
                    Button(action: {
                        audioPlayer.pause()
                    }) {
                        Text("Pause")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
//                        audioPlayer.next()
                    }) {
                        Text("Next")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
