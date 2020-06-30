//
//  TestPianoViewController.swift
//  BookCore
//
//  Created by 이민지 on 2020/05/12.
//

import UIKit
import PlaygroundSupport
import AVFoundation

/// Instantiates a new instance of a live view.
//
@objc(BookCore_PianoViewController)
public class PianoViewController:UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer{
    
    var receivedData: [Int] = []
    
    @IBOutlet weak var Cimage: UIImageView!
    @IBOutlet weak var Dimage: UIImageView!
    @IBOutlet weak var Eimage: UIImageView!
    @IBOutlet weak var Fimage: UIImageView!
    @IBOutlet weak var Gimage: UIImageView!
    @IBOutlet weak var Aimage: UIImageView!
    @IBOutlet weak var Bimage: UIImageView!
    @IBOutlet weak var highCimage: UIImageView!
    

    @IBOutlet weak var loadingView: UIImageView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        loadingView.isHidden = true
        hiddenImage()
        
        soundInit()
    }
    
    public func receive(_ message: PlaygroundValue) {
        
        loadingView.isHidden = false
        
        switch message{
        case .array(let arrivedArray):
            receivedData = arrivedArray.map { (result) -> Int in
                guard case let PlaygroundValue.integer(output) = result else { return 0 }
                return output
            }
                
        default:
            return
        }
        
        loadingView.isHidden = true
        
        playMusic(0)
    }
    
    func playMusic(_ index : Int){
    
        self.hiddenImage()
    
        let val = receivedData[index]
    
        switch(val){
              case 1:
                  self.Cimage.isHidden = false
                  
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
                  self.Dimage.isHidden = false
                  
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
                  
                  self.Eimage.isHidden = false
                  
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
                  self.Fimage.isHidden = false
                  
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
                  self.Gimage.isHidden = false
                  
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
                  self.Aimage.isHidden = false
                  
                  playA()
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                      if(self.receivedData.count-1 == index){
                        stopA()
                          return
                      }else{
                        stopA()
                          let next = index + 1
                          self.playMusic(next)
                      }
                  }
              case 7:
                  self.Bimage.isHidden = false
                  
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
                  self.highCimage.isHidden = false
                  
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
    
    
    func hiddenImage(){
        Cimage.isHidden = true
        Dimage.isHidden = true
        Eimage.isHidden = true
        Fimage.isHidden = true
        Gimage.isHidden = true
        Aimage.isHidden = true
        Bimage.isHidden = true
        highCimage.isHidden = true
    }
    
    @IBAction func Ckey(_ sender: Any) {
        
        hiddenImage()
        
        Cimage.isHidden = false
        
        playC()
        
    }
    @IBAction func Dkey(_ sender: Any) {
        hiddenImage()
        
        Dimage.isHidden = false
        
        playD()
        
        
    }
    @IBAction func Ekey(_ sender: Any) {
        hiddenImage()
        
        Eimage.isHidden = false
        
        playE()
        
        
    }
    
    @IBAction func Fkey(_ sender: Any) {
        hiddenImage()
        
        Fimage.isHidden = false
        
        playF()
        
        
    }
    
    @IBAction func Gkey(_ sender: Any) {
        hiddenImage()
        
        Gimage.isHidden = false
        
        playG()
        
        
    }
    
    @IBAction func Akey(_ sender: Any) {
        hiddenImage()
        
        Aimage.isHidden = false
        
        playA()
        
        
    }
    
    @IBAction func Bkey(_ sender: Any) {
        hiddenImage()
        
        Bimage.isHidden = false
        
        playB()
        
        
    }
    
    @IBAction func highCkey(_ sender: Any) {
        hiddenImage()
        
        highCimage.isHidden = false
        
        playhighC()
      
    }
    
}



