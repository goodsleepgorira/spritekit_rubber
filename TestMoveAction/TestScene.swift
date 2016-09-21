//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {
    
    var bowl:SKSpriteNode!

    
    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //シーンを画面サイズに合わせる。
        self.scaleMode = .AspectFit
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        
        //ボールノードを取得する。
        bowl = self.childNodeWithName("bowl_black") as? SKSpriteNode
    }
    
    
    //画面タッチ移動時の呼び出しメソッド
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //タッチした座標を取得する。
        let location = touches.first!.locationInNode(self)
        
        //タッチした位置まで移動するアクションを作成する。
        let action = SKAction.moveTo(CGPoint(x:location.x, y:location.y + 20), duration:0.1)
        
        //アクションを実行する。
        bowl.runAction(action)

    }


    //1フレームごとの呼び出しメソッド
    override func update(currentTime: NSTimeInterval) {
    }

}
