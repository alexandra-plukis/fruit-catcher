//
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
    var puddle: SKSpriteNode!
    var pointsLabel: SKLabelNode!
    var instructionsLabel: SKLabelNode!
    var white: SKColor!
    var darkBlue: SKColor!
    var lightBlue: SKColor!
    var randomSourse = GKLinearCongruentialRandomSource.sharedRandom()
    
    // the set up for the entire game happens here
    override func didMove(to view: SKView) {
        physicsWorld.contactDelegate = self
        //setColors()
        createSceneContent()
    }
    
    // initializing all of the nodes used in the game
    func createSceneContent() {
        backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        // the baset that catches all of the water drops
        //let basketTexture = SKTexture(imageNamed: "basket.png")
        basket = SKSpriteNode(imageNamed: "basket2.png")
        //basket = SKSpriteNode(texture: basketTexture)
        basket.position = CGPoint(x: frame.midX, y: frame.minY + 50.0)
//        let basketBody = SKPhysicsBody(rectangleOf: basket.size)
//        basketBody.isDynamic = false
//        basket.physicsBody = basketBody
        basket.name = "Basket"
        addChild(basket)
        
//        // the label that keeps track of the points
//        pointsLabel = SKLabelNode(fontNamed: "Helvetica Bold")
//        pointsLabel.text = "0"
//        pointsLabel.fontColor = CGolor.black
//        pointsLabel.fontSize = 48
//        pointsLabel.position = CGPoint(x: size.width - 50, y: size.height - 50)
//        pointsLabel.name = "Points Label"
//        addChild(pointsLabel)
//        
//        // the puddle that takes up the botton of the screen
//        puddle = SKSpriteNode(color: NSColor(red: (155.0 / 255.0), green: (167.0 / 255.0), blue: (191.0 / 255.0), alpha: 1.0), size: CGSize(width: frame.width, height: 60.0))
//        puddle.position = CGPoint(x: frame.midX, y: 0.0)
//        let puddleBody = SKPhysicsBody(rectangleOf: puddle.size)
//        puddleBody.isDynamic = true
//        puddleBody.affectedByGravity = false
//        puddle.physicsBody = puddleBody
//        puddle.name = "Puddle"
//        addChild(puddle)
//        
//        // instructions on how to play the game
//        instructionsLabel = SKLabelNode(fontNamed: "Helvetica Bold")
//        instructionsLabel.numberOfLines = 3
//        instructionsLabel.text = "press i for instructions"
//        instructionsLabel.fontColor = NSColor.black
//        instructionsLabel.fontSize = 24
//        instructionsLabel.position = CGPoint(x: 150, y: size.height - 40)
//        instructionsLabel.name = "Instructions Label"
//        addChild(instructionsLabel)
    }
    
//    // initializing each of the colors used in the game for ease
//    func setColors() {
//        let a = CGFloat(1.0)
//        white = SKColor(red: CGFloat(242.0 / 255.0), green: CGFloat(239.0 / 255.0), blue: CGFloat(243.0 / 255.0), alpha: a)
//        darkBlue = SKColor(red: CGFloat(66.0 / 255.0), green: CGFloat(105.0 / 255.0), blue: CGFloat(168.0 / 255.0), alpha: a)
//        lightBlue = SKColor(red: CGFloat(155.0 / 255.0), green: CGFloat(167.0 / 255.0), blue: CGFloat(191.0 / 255.0), alpha: a)
//        
//    }
//    
//    // continually update the scene to add randomly falling raindrops
//    override func update(_ currentTime: TimeInterval) {
//        let choice = randomSourse.nextUniform()
//        if (choice < 0.02) {
//            let x = CGFloat(randomSourse.nextUniform()) * frame.width
//            let y = frame.height
//            addRain(at: CGPoint(x: x, y: y))
//        }
//    }
//    
//    // add raindrops to the scene that will collide with everything
//    func addRain(at location: CGPoint) {
//        let rain = SKSpriteNode(color: darkBlue, size: CGSize(width: 20.0, height: 20.0))
//        rain.position = location
//        rain.name = "Rain"
//        let rainBody = SKPhysicsBody(rectangleOf: rain.size)
//        rainBody.isDynamic = true
//        rainBody.affectedByGravity = false
//        rainBody.contactTestBitMask = 0xffffffff // hit EVERYTHING
//        rain.physicsBody = rainBody
//        rain.run(SKAction.move(to: CGPoint(x: rain.position.x, y: 10.0), duration: TimeInterval(floatLiteral: 2.0)))
//        addChild(rain)
//    }
//    
//    // each time a key is pressed, we want to acces which key was pressed 
//    // to decide the action we want to take
//    override func keyDown(with event: NSEvent) {
//        // if the action requested is to show the instructions
//        if (event.charactersIgnoringModifiers == "i") {
//            instructionsLabel.text = "arrow controls" + "\n" + "50pts to win" + "\n" + "(-1 for miss, +10 for hit)"
//            instructionsLabel.position = CGPoint(x: 150, y: size.height - 100)
//        }
//        else {
//            instructionsLabel.text = "press i for instructions"
//            instructionsLabel.position = CGPoint(x: 150, y: size.height - 40)
//        }
//        
//        // the increment by which we want to move the basket
//        let increment = CGFloat(60.0), duration = 0.04
//        guard let basket = basket else { print("basket node doesn't exist"); return }
//        
//        // learned how to use these keycodes from this 
//        // stackoverflow question https://stackoverflow.com/questions/3202629/where-can-i-find-a-list-of-mac-virtual-key-codes/16125341
//        
//        // switch based on the keycode of the key pressed
//        switch Int(event.keyCode) {
//        case kVK_LeftArrow:
//            if (basket.position.x <= frame.minX + basket.size.width) {
//                basket.position.x = frame.maxX
//            }
//            basket.run(SKAction.moveBy(x: -increment, y: 0, duration: duration) )
//            break
//            
//        case kVK_RightArrow:
//            if (basket.position.x >= frame.maxX - basket.size.width) {
//                basket.position.x = 0.0
//            }
//            basket.run(SKAction.moveBy(x: increment, y: 0, duration: duration) )
//            break
//            
//        case kVK_UpArrow:
//            if (basket.position.y < frame.maxY - basket.size.height) {
//                basket.run(SKAction.moveBy(x: 0, y: increment, duration: duration))
//                
//            }
//            break
//            
//        case kVK_DownArrow:
//            if (basket.position.y >= frame.minY + 80.0) {
//                basket.run(SKAction.moveBy(x: 0, y: -increment, duration: duration))
//            }
//            break
//            
//        default:
//            break
//        }
//    }
//    
//    // if a physics contact begins, decide which collision it was and then 
//    // create the necessary results
//    func didBegin(_ contact: SKPhysicsContact) { // called whenever two physics bodies hit each other 
//        // the two bodies are bodyA and bodyB
//        guard let nodeA = contact.bodyA.node, let nodeB = contact.bodyB.node else { return }
//        guard let nameA = nodeA.name, let nameB = nodeB.name else { return }
//        
//        if (nameA == "Basket" && nameB == "Rain") {
//            nodeB.run(SKAction.removeFromParent())
//            pointsLabel.text = String(points + 10)
//            points += 10
//            evaluatePoints()
//        } 
//        else if (nameB == "Basket" && nameA == "Rain") {
//            nodeA.run(SKAction.removeFromParent())
//            pointsLabel.text = String(points + 10)
//            points += 10
//            evaluatePoints()
//        } 
//        else if (nameA == "Puddle" && nameB == "Rain") { // symmetric case of above if statement
//            nodeB.run(SKAction.removeFromParent())
//            pointsLabel.text = String(points - 1)
//            points -= 1
//            evaluatePoints()
//        }
//        else if (nameB == "Puddle" && nameA == "Rain") { // symmetric case of above if statement
//            nodeA.run(SKAction.removeFromParent())
//            pointsLabel.text = String(points - 1)
//            points -= 1
//            evaluatePoints()
//        }
//        
//    }
//    
//    // evaluate points to decide if we should keep playing or move to the winning intro screen
//    func evaluatePoints() {
//        if (points >= 50) {
//            if let view = view {
//                let intro = Intro(size: size)
//                intro.setWin(to: true)
//                let transition = SKTransition.fade(withDuration: 3.0)
//                view.presentScene(intro, transition: transition)
//            }
//        }
//    }
}


