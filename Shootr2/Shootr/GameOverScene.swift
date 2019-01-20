//
//  GameOverScene.swift
//  Shootr
//
//  Created by Cameron Scully on 04/01/2019.
//  Copyright © 2019 Cameron Scully. All rights reserved.
//

import Foundation
import SpriteKit




class GameOverScene: SKScene {
    init(size: CGSize, won:Bool) {
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.white
        
        // 2
            let message = won ? "You Won!" : "You Lose :["
        
            // 3
            let label = SKLabelNode(fontNamed: "Chalkduster")
            label.text = message
            label.fontSize = 40
            label.fontColor = SKColor.black
            label.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(label)
        
        let tapLabel = SKLabelNode(fontNamed: "Chalkduster")
        tapLabel.text = "tap to play again!!"
        tapLabel.fontSize = 30
        tapLabel.fontColor = SKColor.black
        tapLabel.position = CGPoint(x: size.width/2, y: size.height/1.5)
        addChild(tapLabel)
        
        let scoreLabel = SKLabelNode(fontNamed: "Chalkduster")
        scoreLabel.text = "Points = \(score)"
        scoreLabel.fontSize = 40
        scoreLabel.fontColor = SKColor.black
        scoreLabel.position = CGPoint(x: size.width/2, y: size.height/2.65)
        addChild(scoreLabel)
        
        
        
        
        
        
        
    }
        
            
        // 4
        override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?)  {
            
            let gameScene = GameScene(size: self.size)
            gameScene.scaleMode = .aspectFill
            
            self.view?.presentScene(gameScene, transition: SKTransition.doorsCloseHorizontal(withDuration: 1.0))
            
        }
    
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
