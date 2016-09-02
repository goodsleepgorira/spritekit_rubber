//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    var birdBrown:SKSpriteNode!
    var birdRed:SKSpriteNode!
    var birdBlue:SKSpriteNode!


    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //SKSファイルに配置した鳥ノードを取得する。
        birdBrown = self.childNodeWithName("bird_brown") as? SKSpriteNode
        birdRed = self.childNodeWithName("bird_red") as? SKSpriteNode
        birdBlue = self.childNodeWithName("bird_blue") as? SKSpriteNode
        
        //シーンを画面サイズに合わせる。
        self.scaleMode = .AspectFit
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)

    }
    
    
    //画面タッチ時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {

        //フィールドビットマスクを線形重力フィールドと同じにする。
        birdBrown.physicsBody?.fieldBitMask = 0b0001
        birdRed.physicsBody?.fieldBitMask = 0b0001
        birdBlue.physicsBody?.fieldBitMask = 0b0001
        
    }    
}
