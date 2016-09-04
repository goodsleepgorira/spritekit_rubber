//
//  TestScene.swift
//

import Foundation
import SpriteKit

class TestScene:SKScene {

    //現在シーン設定時の呼び出しメソッド
    override func didMoveToView(view: SKView) {
        
        //シーンを画面サイズに合わせる。
        self.scaleMode = .AspectFit
        
        //画面端に物理ボディを設定する。
        self.physicsBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
    }
    
    
    //画面タッチ開始時の呼び出しメソッド
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("画面をタップしました。")
    }
}
