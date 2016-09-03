//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    var rocketBrown:SKSpriteNode!
    var rocketRed:SKSpriteNode!
    var rocketBlue:SKSpriteNode!


    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //SKSファイルに配置した宇宙船ノードを取得する。
        rocketBrown = self.childNodeWithName("rocket_brown") as? SKSpriteNode
        rocketRed = self.childNodeWithName("rocket_red") as? SKSpriteNode
        rocketBlue = self.childNodeWithName("rocket_blue") as? SKSpriteNode
        
        //シーンを画面サイズに合わせる。
        self.scaleMode = .AspectFit
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    }
    
    
    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("画面をタップしました。")
    }
}
