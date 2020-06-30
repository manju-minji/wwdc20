//
//  ConditionViewController.swift
//  BookCore
//
//  Created by 이민지 on 2020/05/14.
//

import Foundation
import UIKit
import PlaygroundSupport

@objc(BookCore_ConditionViewController)
class ConditionViewController:UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer{
    
    
    @IBOutlet weak var tomBtn: UIButton!
    @IBOutlet weak var minBtn: UIButton!
    @IBOutlet weak var otherBtn: UIButton!
    
    
    var receivedData: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        soundInit()
    }
    
    func buttonEnable(){
        tomBtn.isEnabled=true
        minBtn.isEnabled=true
        otherBtn.isEnabled=true
    }
    
    func buttonDisable(){
        tomBtn.isEnabled=false
        minBtn.isEnabled=false
        otherBtn.isEnabled=false
    }
    
    @IBAction func TomButton(_ sender: Any) {
       
        buttonDisable()
        
        playC()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            playE()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                playG()
                
                self.buttonEnable()
            }
        }
        
       
        
    }
    @IBAction func MinButton(_ sender: Any) {
        buttonDisable()
        
        playD()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            playF()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                playA()
                
                self.buttonEnable()
            }
        }
        
        
    }
    
    @IBAction func DefaultButton(_ sender: Any) {
        buttonDisable()
        
        playC()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
            playD()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                playE()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                    playF()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                        playG()
                        
                        self.buttonEnable()
                    }
                }
            }
        }
    }
    
    public func receive(_ message: PlaygroundValue) {
        
        stop()
        
            buttonDisable()
          
          switch message{
          case .array(let arrivedArray):
              receivedData = arrivedArray.map { (result) -> Int in
                  guard case let PlaygroundValue.integer(output) = result else { return 0 }
                  return output
              }
              
          default:
              return
          }
          
          
          playMusic(0)
        
        buttonEnable()
      }
      
      func playMusic(_ index : Int){
          
          let val = receivedData[index]
          
              switch(val){
              case 1:
                  
                  playC()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopC()
                          return
                      }else{
                          stopC()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 2:
                  
                  
                  playD()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopD()
                          return
                      }else{
                          stopD()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 3:
                  
                  
                  playE()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopE()
                          return
                      }else{
                          stopE()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 4:
                  
                  playF()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopF()
                          return
                      }else{
                          stopF()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 5:
                  
                  playG()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopG()
                          return
                      }else{
                          stopG()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 6:
                  playA()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopA()
                          return
                      }else{
                          let next = index + 1
                          stopA()
                          self.playMusic(next)
                      }
                  }
              case 7:
                  
                  playB()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stopB()
                          return
                      }else{
                          stopB()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 8:
                  
                  playhighC()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          stophighC()
                          return
                      }else{
                          stophighC()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 9:
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                          return
                      }else{
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              default :
                  break;
              }
          
      }
}
