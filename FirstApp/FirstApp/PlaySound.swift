//
//  PlaySound.swift
//  FirstApp
//
//  Created by 骆超然 on 2021/12/13.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("不能播放指定的音效文件")
        }
    }
}
