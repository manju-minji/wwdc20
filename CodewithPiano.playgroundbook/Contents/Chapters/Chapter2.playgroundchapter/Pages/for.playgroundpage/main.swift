//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Piano with Loop - For
 
 ---
 ## 1. What is For?
 
You use the for-in loop to iterate over a sequence, such as items in an array, ranges of numbers, or characters in a string.

 You can use for-in loops with numeric ranges. This example play C, D:
 
 ```
 for index in 1...5 {
    C()
    D()
 }
 
 // play C, D for 5 times.
 ```
 
 The sequence being iterated over is a range of numbers from 1 to 5, inclusive, as indicated by the use of the closed range operator (...). The value of index is set to the first number in the range (1), and the statements inside the loop are executed. In this case, plays C and D. value of index. After the statement is executed, the value of index is updated to contain the second value in the range (2), and the C() and D() function is called again. This process continues until the end of the range is reached.

 In the example above, index is automatically set at the start of each iteration of the loop. As such, index does not have to be declared before it is used. It is implicitly declared simply by its inclusion in the loop declaration.
 
 ---
 ## 2. Practice

 Use For statement to make C E G highC repeat 3 times.
 
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
//#-code-completion(identifier, show, C(), E(), G(), highC())
//#-code-completion(description, show, "3")
//#-code-completion(keyword, show, for)
//#-code-completion(identifier, show, count)

func play(){
    //#-editable-code
    //#-end-editable-code
}

//#-code-completion(identifier, hide, C(), E(), G(), highC())
//#-code-completion(keyword, hide, for)
//#-code-completion(description, hide, "3")
//#-code-completion(identifier, hide, count)

//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/

//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code


