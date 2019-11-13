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
    var green = SKColor(red: (54.0 / 255.0), green: (64.0 / 255.0), blue: (18.0 / 255.0), alpha: 1.0)
    
    // set up the scene to display the intro screen
    override func didMove(to view: SKView) {
        backgroundColor = green
        createSceneContent()
    }
    
    // here we initialize all of the nodes used in the scene
    func createSceneContent() {
    
    }

    // when the player presses the button, we want to start the game with a Game scene
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
        
}

