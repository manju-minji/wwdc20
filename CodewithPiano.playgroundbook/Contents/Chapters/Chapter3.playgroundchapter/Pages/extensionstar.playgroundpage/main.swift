//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Play Little Star with Condition and Loop
 
If you look at the music sheet of the live view, there is an index.

- If you look at the phrase1, the value of current index / 2 is related to the note to be played. C for 0, G for 1, A for 2, and G for 3.
- phrase2 and phrase3 show the same pattern.
- Refer to phrase1() and phrase2(), complete phrase3() and play twinkle twinkle little star by calling function in sequence.
 
*/


//#-hidden-code
import PlaygroundSupport
import Foundation

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
// using While
func phrase1(){
    var index = 0
    
    // '/' indicates division in swift
    while index < 7 {
        if index / 2 == 0 {
            C()
        }else if index / 2 == 1 {
            G()
        }else if index / 2 == 2 {
            A()
        }else{
            G()
        }
        
        index = index + 1
    }
}

// using For
func phrase2(){
    
    for index in 0...6{
        if index / 2 == 0 {
            F()
        }else if index / 2 == 1 {
            E()
        }else if index / 2 == 2 {
            D()
        }else{
            C()
        }
    }
}


//#-code-completion(keyword, show, while, if, for)
//#-code-completion(description, show, "else", "index")
//#-code-completion(description, show, "==", "<", "/", "+", "=")
//#-code-completion(description, show, "index = index + 1")
//#-code-completion(description, show, "7")
//#-code-completion(identifier, show, C(), D(), E(), F(), G(), A(), B(), highC())
func phrase3(){
    //#-editable-code
    //#-end-editable-code
}

// Tip : If you put an R() between each phrase, the performance is better
//#-code-completion(keyword, hide, while, if, for)
//#-code-completion(description, hide, "else", "index")
//#-code-completion(description, hide, "==", "<", "/", "+", "=")
//#-code-completion(description, hide, "index = index + 1")
//#-code-completion(description, hide, "7")
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

