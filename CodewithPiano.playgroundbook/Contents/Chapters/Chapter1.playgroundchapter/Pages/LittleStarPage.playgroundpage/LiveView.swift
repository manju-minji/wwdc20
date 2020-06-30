//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  Instantiates a live view and passes it to the PlaygroundSupport framework.
//

import UIKit
import PlaygroundSupport
import BookCore

// Instantiate a new instance of the live view from BookCore and pass it to PlaygroundSupport.
imageName = "star.png"
PlaygroundPage.current.liveView = ScoreViewController()

