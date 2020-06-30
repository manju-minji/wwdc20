//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Play Gingle Bells with Condition and Loop
 
 Let's play the "Gingle Bells" by referring to the music sheet of live view.
 
 - Complete phrase1 and phrase3 function.
 
 - Put R() in the blank.
 
 - play Gingle Bells by calling function in sequence.
 
 - listen : [Gingle Bells](https://youtu.be/qmVaEn57EHY?t=52)
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
func phrase1(){
    
    var index = 0
    
    while index < /*#-editable-code*/<#T##end index number+1##Int#>/*#-end-editable-code*/{
        
        if index == /*#-editable-code*/<#T##proper condition##Int#>/*#-end-editable-code*/{
            R()
        }else if index == /*#-editable-code*/<#T##proper condition##Int#>/*#-end-editable-code*/{
            R()
        }else{
            //#-code-completion(identifier, show, C(), D(), E(), F(), G(), A(), B(), highC(), R())
            /*#-editable-code*/<#proper note#>/*#-end-editable-code*/
        }
        
        index = index + 1
    }
}

func phrase2(){
    E()
    G()
    C()
    D()
    E()
    for i in 1...3{
        R()
    }
}

//#-code-completion(identifier, hide, C(), D(), E(), F(), G(), A(), B(), highC(), R())
//#-code-completion(keyword, show, for, while, var, if)
//#-code-completion(identifier, show, count)
//#-code-completion(description, show, "else", "i", "==", "<", "+", "=")
//#-code-completion(identifier, show, F(), E())
func phrase3(){
    //#-editable-code
    //#-end-editable-code
}

func phrase4(){
    E()
    D()
    D()
    C()
    D()
    R()
    G()
    R()
}

func phrase5(){
    G()
    G()
    F()
    D()
    C()
    for i in 1...3{
        R()
    }
}

//#-code-completion(identifier, hide, F(), E())
//#-code-completion(keyword, hide, for, while, var, if)
//#-code-completion(identifier, hide, count)
//#-code-completion(description, hide, "else", "i", "==", "<", "+", "=")
//#-code-completion(identifier, show, phrase1(), phrase2(), phrase3(), phrase4(), phrase5())
func play(){
    //#-editable-code
    //#-end-editable-code
}

//#-code-completion(identifier, hide, phrase1(), phrase2(), phrase3(), phrase4(), phrase5())
//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/


//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code



