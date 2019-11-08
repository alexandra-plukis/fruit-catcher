//
//  Intro.swift
//  FruitCatcher
//
//  Created by Alexandra Plukis on 11/8/19.
//  Copyright © 2019 ASU Swift Workshops. All rights reserved.
//

import Foundation
import SpriteKit

class Intro: SKScene {
    
    var playButton: SKLabelNode!
    var didWin: Bool = false
    
    // set up the scene to display the intro screen
    override func didMove(to view: SKView) {
        let r = CGFloat(54.0 / 255.0)
        let g = CGFloat(64.0 / 255.0)
        let b = CGFloat(18.0 / 255.0)
        let a = CGFloat(1.0)
        backgroundColor = SKColor(red: r, green: g, blue: b, alpha: a)
        createSceneContent()
    }
    
    // here we initialize all of the nodes used in the scene
    func createSceneContent() {
        //green color elements
        let r = CGFloat(54.0 / 255.0)
        let g = CGFloat(64.0 / 255.0)
        let b = CGFloat(18.0 / 255.0)
        let a = CGFloat(1.0)
        
        // the welcome label that welcomes the user to play the game
        let textNode = SKLabelNode(fontNamed: "Helvetica Bold")
        textNode.text = "push to play the rain game!"
        textNode.fontSize = 48
        textNode.position = CGPoint(x: size.width / 2.0, y: (size.height / 2) + 90)
        textNode.name = "Welcome Label"
        addChild(textNode)
        
        // the play button background
        let playRect = SKSpriteNode(color: UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), size: CGSize(width: 150.0, height: 70.0))
        playRect.position = CGPoint(x: size.width / 2.0, y: (size.height / 2) + 15.0)
        playRect.name = "Play Rectangle"
        addChild(playRect)
        
        // the play button label
        playButton = SKLabelNode(fontNamed: "Helvetica Bold")
        playButton.text = "play!"
        playButton.fontSize = 44
        playButton.fontColor = UIColor(red: r, green: g, blue: b, alpha: a)
        playButton.position = CGPoint(x: size.width / 2.0, y: (size.height / 2))
        playButton.name = "Play Label"
        addChild(playButton)
        
        // if the previous game was won, we want to congratulate the player
        if (didWin) {
            let textNode = SKLabelNode(fontNamed: "Helvetica Bold")
            textNode.text = "congrats, you won :)"
            textNode.fontSize = 54
            textNode.position = CGPoint(x: size.width / 2.0, y: (size.height / 2) + 185)
            textNode.name = "Winning Label"
            addChild(textNode)
        }
        didWin = false // reset for next game
    }
    
    // setting function to maintain data encapsulation policies
    func setWin(to newBool: Bool) {
        self.didWin = newBool;
    }
    
    // when the player presses the button, we want to start the game with a Game scene
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let events = event?.allTouches
        let touchEvent = events?.first
        let touchLocation = touchEvent?.location(in: self)
        let location = CGPoint(x: touchLocation!.x, y: touchLocation!.y)
        if playButton.contains(location) {
            if let view = view {
                let game = Game(size: size)
                let transition = SKTransition.fade(withDuration: 1.0)
                view.presentScene(game, transition: transition)
                }
            }
        }
        
//    override func mouseDown(with event: UIEvent) {
//        let eventLocation = event.locationInWindow
//        let location = CGPoint(x: eventLocation.x, y: eventLocation.y)
//        if playButton.contains(location) {
//            if let view = view {
//                let game = Game(size: size)
//                let transition = SKTransition.fade(withDuration: 1.0)
//                view.presentScene(game, transition: transition)
//            }
//        }
//    }
    
}

