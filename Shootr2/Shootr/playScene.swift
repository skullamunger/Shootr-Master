//
//  playScene.swift
//  Shootr
//
//  Created by Cameron Scully on 04/01/2019.
//  Copyright © 2019 Cameron Scully. All rights reserved.
//

import UIKit
import SpriteKit

class playScene: SKScene {
    
    
    
    //create playbutton instance
    let playButton = SKSpriteNode(imageNamed: "start")
    
    override func didMove(to view: SKView) {
        let message = "click to start"
        
        // 3
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/1.5)
        addChild(label)
        
        
        
        backgroundColor = UIColor.white
        addPlayButton()  //add playbutton
    }
    
    func addPlayButton(){
        
        playButton.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        playButton.xScale = 0.3
        playButton.yScale = 0.3
        self.addChild(playButton)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //it will transits to the next scene
        let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
        let letsPlay = GameScene(size: self.size)
        self.view?.presentScene(letsPlay, transition: reveal)
    }
    
    
}



