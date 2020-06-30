//#-hidden-code
//
//  See LICENSE folder for this template’s licensing information.
//
//  Abstract:
//  The Swift file containing the source code edited by the user of this playground book.
//
//#-end-hidden-code
/*:
 # Piano with Condition - If Else(1)
 
---
 ## 1. What is If Else?
 
 An if statement is used for executing code based on the evaluation of one or more conditions.

 There are two basic forms of an if statement. In each form, the opening and closing braces are required.
 
 - The first form allows code to be executed only when a condition is true and has the following form:
 
 ```
 if condition {
    statement
 }
 
 ```
 
 - The second form of an if statement provides an additional else clause (introduced by the else keyword) and is used for executing one part of code when the condition is true and another part of code when the same condition is false. When a single else clause is present, an if statement has the following form:
 
 ```
 if 'condition' {
    statement to excute if 'condition' is 'true'
 else{
    statement to excute if 'condition' is 'false'
 }
  ```
 
 The else clause of an if statement can contain another if statement to test more than one condition. An if statement chained together in this way has the following form:
    
```
 if 'condition 1'{
    statement to excute if 'condition 1' is 'true'
 else if 'condition 2' {
    statement to excute if 'condition 2' is 'true'
 }else{
    statement to excute if 'condition' is 'false'
 }
 ```
---
## 2. Practice
 
 For the code below,
- If the number value corresponds to 10, play C, E, D
- If the number value corresponds to 20, play D, F, A
- If the number value corresponds to 30, play E, E, F, G
- If the number values do not correspond to 10, 20, 30, play highC.
 
 
Let's put a value on the number and hear what notes are played according to the value.
```
 let number = 10
 
 // result - play C,E,D
```
 
 ```
  let number = 25
  
  // result - play highC
 ```
 
---
 Reference : [the swift programming language swift 5.2](https://docs.swift.org/swift-book/ReferenceManual/Statements.html)
 
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
let number = /*#-editable-code*/<#T##number of you want##Int#>/*#-end-editable-code*/

func play(){
    
    // == means the same
    if number == 10 {
        C()
        D()
        E()
    }else if number == 20 {
        D()
        F()
        A()
    }else if number == 30 {
        E()
        E()
        F()
        G()
    }else{
        highC()
    }
}



//#-code-completion(identifier, show, play())
/*#-editable-code*/<#tap to enter code#>/*#-end-editable-code*/

//#-hidden-code
sendResult(noteResults)
//#-end-hidden-code
