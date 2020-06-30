//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Piano with Function Call
 
 ---
 ## 1. What is Function?
 
 Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.
```
func C(){
    //Consists of codes for making C sounds
}
 
 //Call function C() that makes a C sound
 C()
 
 //result - note C is play
```
- You can put a function in a function. By putting a function in a function, another function can be called.
 
 ```
 func play(){
    C()
    F()
 }
 
 play()
 
 //result - note C and F play
```
 
 ---
 ## 2. Practice
 
 On this page, you can play the desired piano notes through function calls.

 - Put the notes you want to play into the play() function
 - Enter the play() function to listen them.
```
 func play(){
    C()
    E()
 }

 play()
 ```
 - note : C(), D(), E(), F(), G(), A(), B(), highC()
 - rest : R()
 - You can hear the sound by pressing the piano key in the live view.
*/


//#-hidden-code
import PlaygroundSupport
import Foundation
import BookCore

let page = PlaygroundPage.current
let proxy = page.liveView as? PlaygroundRemoteLiveViewProxy

func sendResult(_ messageToSend: [PlaygroundValue]) {
    proxy?.send(.array(messageToSend))
}

var noteResults: [PlaygroundValue] = []

func C(){
    noteResults.append(PlaygroundValue.integer(1))
}

func D(){
    noteResults.append(PlaygroundValue.integer(2))
}

func E(){
    noteResults.append(PlaygroundValue.integer(3))
}

func F(){
    noteResults.append(PlaygroundValue.integer(4))
}

func G(){
    noteResults.append(PlaygroundValue.integer(5))
}

func A(){
    noteResults.append(PlaygroundValue.integer(6))
}

func B(){
    noteResults.append(PlaygroundValue.integer(7))
}

func highC(){
    noteResults.append(PlaygroundValue.integer(8))
}

func R(){
    noteResults.append(PlaygroundValue.integer(9))
}
//#-end-hidden-code

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, C(), D(), E(), F(), G(), A(), B(), highC(), R())
func play(){
    //#-editable-code
    //#-end-editable-code
}

//#-code-completion(identifier, hide, C(), D(), E(), F(), G(), A(), B(), highC(), R())
//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/


//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code
