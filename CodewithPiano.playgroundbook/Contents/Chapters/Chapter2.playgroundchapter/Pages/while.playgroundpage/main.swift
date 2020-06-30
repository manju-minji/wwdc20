//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Piano with Loop - While
 
 ---
 ## 1. What is While?
 
 A while loop performs a set of statements until a condition becomes false. These kinds of loops are best used when the number of iterations is not known before the first iteration begins.
 
 A while loop starts by evaluating a single condition. If the condition is true, a set of statements is repeated until the condition becomes false.

 ```
 while condition {
    statements
 }

 ```
 
 ```
 var count = 0
 
 while count < 2 {
    C()
    D()
    count = count + 1
 }
 
 // 1 times count to 1
 // 2 times count to 2
 // 3 times -> count < 2 is false because current count is 2 -> done.
 
 // result - play C,D 2 times
 ```
 
 ---
 ## 2. Practice

 Use While statement to make C E G highC repeat 3 times.
 
 
 ---
 Reference : [the swift programming language swift 5.2](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)
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
func play(){
    
    var count = 0

    while count < /*#-editable-code*/<#T##number of repetitions##Int#>/*#-end-editable-code*/{
        //#-code-completion(identifier, show, C(), E(), G(), highC())
        //#-editable-code
        //#-end-editable-code
        count = count + 1
    }
}

//#-code-completion(identifier, hide, C(), E(), G(), highC())
//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/

//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code


