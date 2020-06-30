//
//  ScoreViewController.swift
//  BookCore
//
//  Created by 이민지 on 2020/05/15.
//

import Foundation
import UIKit
import PlaygroundSupport

public var imageName:String=""

public class ScoreViewController:UIViewController, PlaygroundLiveViewMessageHandler, PlaygroundLiveViewSafeAreaContainer{
    
    var receivedData: [Int] = []
    
    let loadImageView:UIImageView = UIImageView()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        soundInit()
        
        self.view.backgroundColor = UIColor(red: 0.99, green: 0.98, blue: 0.72, alpha: 1.00)
        
        if imageName == "star.png" || imageName == "star_index.png"{
            self.view.backgroundColor = .black
            let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "starry.jpg")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at:0)
        }else if imageName == "gingle.png"{
            self.view.backgroundColor = .white
            let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
            backgroundImage.image = UIImage(named: "snowy.jpg")
            backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
            self.view.insertSubview(backgroundImage, at:0)
        }
        
        
        let sheet = UIImage(named: imageName)
        let myImageView:UIImageView = UIImageView()
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.image = sheet
        
        self.view.addSubview(myImageView)
        
        NSLayoutConstraint.activate([
            myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            myImageView.widthAnchor.constraint(equalToConstant:1000),
            myImageView.heightAnchor.constraint(equalToConstant:1000),
        ])
        
        let loading = UIImage(named: "loading.png")
        
        loadImageView.translatesAutoresizingMaskIntoConstraints = false
        loadImageView.contentMode = UIView.ContentMode.scaleAspectFit
        loadImageView.image = loading
        
        self.view.addSubview(loadImageView)
        
        NSLayoutConstraint.activate([
            loadImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            loadImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            loadImageView.widthAnchor.constraint(equalToConstant:500),
            loadImageView.heightAnchor.constraint(equalToConstant:500),
        ])
        
        loadImageView.isHidden = true
        
        
    }
    
    public func receive(_ message: PlaygroundValue) {
        
        loadImageView.isHidden = false
        
        switch message{
        case .array(let arrivedArray):
            self.receivedData = arrivedArray.map { (result) -> Int in
                guard case let PlaygroundValue.integer(output) = result else { return 0 }
                return output
            }
        default:
            return
        }
        
        self.loadImageView.isHidden = true
    
        self.playMusic(0)
        
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
                if(self.receivedData.count-1 == index ){
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
