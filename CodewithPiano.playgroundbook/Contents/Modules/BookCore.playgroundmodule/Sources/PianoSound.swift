//
//  PianoSound.swift
//  BookCore
//
//  Created by 이민지 on 2020/05/12.
//

import Foundation
import AVFoundation
import UIKit

var C5 = AVAudioPlayer()
var D5 = AVAudioPlayer()
var E5 = AVAudioPlayer()
var F5 = AVAudioPlayer()
var G5 = AVAudioPlayer()
var A5 = AVAudioPlayer()
var B5 = AVAudioPlayer()
var C6 = AVAudioPlayer()

var soundOrder:[Int] = []

public func soundInit(){
    let soundC = Bundle.main.path(forResource: "C", ofType: "mp3")
    let soundD = Bundle.main.path(forResource: "D", ofType: "mp3")
    let soundE = Bundle.main.path(forResource: "E", ofType: "mp3")
    let soundF = Bundle.main.path(forResource: "F", ofType: "mp3")
    let soundG = Bundle.main.path(forResource: "G", ofType: "mp3")
    let soundA = Bundle.main.path(forResource: "A", ofType: "mp3")
    let soundB = Bundle.main.path(forResource: "B", ofType: "mp3")
    let soundC6 = Bundle.main.path(forResource: "C6", ofType: "mp3")
    
    
    do {
        C5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundC! ))
        D5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundD! ))
        E5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundE! ))
        F5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundF! ))
        G5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundG! ))
        A5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundA! ))
        B5 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundB! ))
        C6 = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: soundC6! ))
        
        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        try AVAudioSession.sharedInstance().setActive(true)
        
    }
    catch{
        print(error)
    }
    
    C5.enableRate = true
    C5.currentTime = 0
    C5.rate = 3
    
    D5.enableRate = true
    D5.currentTime = 0
    D5.rate = 3
    
    E5.enableRate = true
    E5.currentTime = 0
    E5.rate = 3
    
    F5.enableRate = true
    F5.currentTime = 0
    F5.rate = 3
    
    G5.enableRate = true
    G5.currentTime = 0
    G5.rate = 3
    
    A5.enableRate = true
    A5.currentTime = 0
    A5.rate = 3
    
    B5.enableRate = true
    B5.currentTime = 0
    B5.rate = 3
    
    C6.enableRate = true
    C6.currentTime = 0
    C6.rate = 3
}

public func stop(){
    C5.stop()
    D5.stop()
    E5.stop()
    F5.stop()
    G5.stop()
    A5.stop()
    B5.stop()
    C6.stop()
}

public func soundPlayNow() -> Bool{
    if C5.isPlaying || G5.isPlaying{
        return true
    }else if D5.isPlaying || A5.isPlaying{
        return true
    }else if E5.isPlaying || B5.isPlaying{
        return true
    }else if F5.isPlaying || C6.isPlaying{
        return true
    }
    
    return false
}

public func playC(){
    
    if C5.isPlaying {
        C5.pause()
    }else{
        C5.stop()
    }
    
    C5.currentTime = 0
    
    C5.play()
}

public func stopC(){
    C5.stop()
}

public func playD(){
    
    if D5.isPlaying {
        D5.pause()
    }else{
        D5.stop()
    }
    
    D5.currentTime = 0
    
    D5.play()
}

public func stopD(){
    D5.stop()
}


public func playE(){
    
    if E5.isPlaying {
        E5.pause()
    }else{
        E5.stop()
    }
    
    E5.currentTime = 0
    
    E5.play()
}

public func stopE(){
    E5.stop()
}

public func playF(){
    if F5.isPlaying {
        F5.pause()
    }else{
        F5.stop()
    }
    
    
    F5.currentTime = 0
    
    F5.play()
}

public func stopF(){
    F5.stop()
}

public func playG(){
    
    if G5.isPlaying {
        G5.pause()
    }else{
        G5.stop()
    }
    
    G5.currentTime = 0

    G5.play()
}

public func stopG(){
    G5.stop()
}

public func playA(){
    
    if A5.isPlaying {
        A5.pause()
    }else{
        A5.stop()
    }
    
    A5.currentTime = 0
 
    A5.play()
}

public func stopA(){
    A5.stop()
}

public func playB(){
    
    if B5.isPlaying {
        B5.pause()
    }else{
        B5.stop()
    }
    
    B5.currentTime = 0
    
    B5.play()
}

public func stopB(){
    B5.stop()
}

public func playhighC(){
    if C6.isPlaying {
        C6.pause()
    }else{
        C6.stop()
    }
    
    
    C6.currentTime = 0
    
    C6.play()
}


public func stophighC(){
    C6.stop()
}
