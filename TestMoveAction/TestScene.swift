//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    var birdBrown:SKSpriteNode!
    var birdRed:SKSpriteNode!

    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //SKSファイルに配置した鳥ノードを取得する。
        birdBrown = self.childNodeWithName("bird_brown") as? SKSpriteNode
        birdRed = self.childNodeWithName("bird_red") as? SKSpriteNode
        
        //シーンを画面サイズに合わせる。
        self.scaleMode = .AspectFit
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)

    }
    
    
    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //タッチした座標のノードを取得する。
        let location = touches.first!.locationInNode(self)

        if let node = nodeAtPoint(location) as? SKSpriteNode {
            //鳥ノードの場合、物理ボディを設定する。
            if(node == birdBrown || node == birdRed){
                node.physicsBody?.affectedByGravity = true
            }
        }
    }    
}
