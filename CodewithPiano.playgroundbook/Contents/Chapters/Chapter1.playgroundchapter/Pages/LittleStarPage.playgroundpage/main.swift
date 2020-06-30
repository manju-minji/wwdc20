//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Play Little Star with Function Call
  
  Let's make a Twinkle, Twinkle, Little Star(A.K.A Little Star) and play it!
  
  As you see, there is a lot of repetition in Little Star.
  
  - notes : C(), D(), E(), F(), G(), A(), B()
  
 Tie the repeated parts together into a phrase function and reduce repeated inputs.
  
  - listen : [Twinkle, Twinkle, Little Star](https://youtu.be/vVbzX6xLva8?t=4)
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
//#-code-completion(identifier, show, C(), D(), E(), F(), G(), A(), B(), highC())
func phrase1(){
    C()
    C()
    G()
    G()
    A()
    A()
    G()
}

func phrase2(){
    //#-editable-code
    //#-end-editable-code
}

func phrase3(){
    //#-editable-code
    //#-end-editable-code
}


// Tip : If you put an R() between each phrase, the performance is better
//#-code-completion(identifier, hide, C(), D(), E(), F(), G(), A(), B(), highC())
//#-code-completion(identifier, show, phrase1(), phrase2(), phrase3(), R())
func play(){
    //#-editable-code
    //#-end-editable-code
}
//#-code-completion(identifier, hide, phrase1(), phrase2(), phrase3(), R())
//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/

//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code
