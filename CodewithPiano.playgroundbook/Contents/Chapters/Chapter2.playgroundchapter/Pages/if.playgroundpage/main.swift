//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Piano with Condition - If Else(2)

 ---
 ## Practice
 
 - Tom wants to play C() E() G()
 
 - Min wants to play D() F() A()
 
 - The others want C() D() E() F() G()
 
 complete the below function and play properly to each person.
 
 ```
 let name = Jenny
 
 //result - play C, D, E, F, G
 ```
 ```
 let name = Min
 
 //result - play D, F, A
 ```
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

let Tom = "Tom"
let Min = "Min"
let Pengsoo = "Pengsoo"
let Jenny = "Jenny"
let Diana = "Diana"
//#-end-hidden-code

//#-code-completion(everything, hide)
//#-code-completion(identifier, show, Tom, Min, Pengsoo, Jenny, Diana)
let name = /*#-editable-code*/<#name of you want#>/*#-end-editable-code*/

//#-code-completion(identifier, hide, Tom, Min, Pengsoo, Jenny, Diana)
//#-code-completion(identifier, show, Tom, Min)
func play(){
    
    // == means the same
    if name == /*#-editable-code*/<#proper name for these notes#>/*#-end-editable-code*/ {
        C()
        E()
        G()
    }else if name == /*#-editable-code*/<#tap to enter name#>/*#-end-editable-code*/ {
        //#-code-completion(identifier, show, C(), D(), E(), F(), G(), A(), B(), highC())
        //#-code-completion(identifier, hide, Tom, Min)
        //#-editable-code
        //#-end-editable-code
    }else{
        //#-editable-code
        //#-end-editable-code
    }
    
}

//#-code-completion(identifier, hide, C(), D(), E(), F(), G(), A(), B(), highC())
//#-code-completion(identifier, show, play())

/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/


//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code

