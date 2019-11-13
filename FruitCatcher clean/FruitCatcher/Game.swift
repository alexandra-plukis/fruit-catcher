//  Game.swift
//  FruitCatcher
//
//  Created by Alexandra Plukis on 11/8/19.
//  Copyright © 2019 ASU Swift Workshops. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class Game: SKScene, SKPhysicsContactDelegate {
    
    // setting up variables that multiple functions need to access
    var points: Int = 0
    var basket: SKSpriteNode!
    var ground: SKSpriteNode!
    var pointsLabel: SKLabelNode!
    var randomSourse = GKLinearCongruentialRandomSource.sharedRandom()
    var fruitTextures: [SKTexture] = []
    
    // the set up for the entire game happens here
    override func didMove(to view: SKView) {
        
    }
    
    // initializing all of the nodes used in the game
    func createSceneContent() {

    }
     
    // continually update the scene to add randomly falling raindrops
    override func update(_ currentTime: TimeInterval) {
        
    }
   
    // add falling fruit to the scene that will collide with everything
    func addFruit(at location: CGPoint) {
        
    }

    // if a physics contact begins, decide which collision it was and then 
    // create the necessary results
    func didBegin(_ contact: SKPhysicsContact) { // called whenever two physics bodies hit each other 
        
    }

    // evaluate points to decide if we should keep playing or move to the winning intro screen
    func evaluatePoints() {
        
    }
    
    // for when someone touches the screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    // also for when someone touches the screen
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    } 
}


