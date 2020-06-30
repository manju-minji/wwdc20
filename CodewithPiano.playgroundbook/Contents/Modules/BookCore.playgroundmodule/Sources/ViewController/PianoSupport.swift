//
//  LittleStarSupport.swift
//  BookCore
//
//  Created by 이민지 on 2020/05/12.
//

import UIKit
import PlaygroundSupport

/// Instantiates a new instance of a live view.
///
/// By default, this loads an instance of `LiveViewController` from `LiveView.storyboard`.
public func pianoInstantiateLiveView() -> PlaygroundLiveViewable {
    let storyboard = UIStoryboard(name: "piano", bundle: nil)

    guard let viewController = storyboard.instantiateInitialViewController() else {
        fatalError("PianoLiveView.storyboard does not have an initial scene; please set one or update this function")
    }

    guard let liveViewController = viewController as? PianoViewController else {
        fatalError("PianoLiveView.storyboard's initial scene is not a LiveViewController; please either update the storyboard or this function")
    }

    return liveViewController
}
