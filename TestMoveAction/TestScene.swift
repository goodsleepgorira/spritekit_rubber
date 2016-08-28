//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    var birdBrown:SKSpriteNode!

    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //SKSファイルに配置した鳥ノードを取得する。
        birdBrown = self.childNodeWithName("bird_brown") as? SKSpriteNode
        
    }
    
    
    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        //タッチした座標のノードを取得する。
        let location = touches.first!.locationInNode(self)
        let node = nodeAtPoint(location) as! SKSpriteNode
        
        //鳥ノードの場合、物理ボディを設定する。
        if(node == birdBrown){
            node.physicsBody?.affectedByGravity = true
        }
        
    }
    
}
