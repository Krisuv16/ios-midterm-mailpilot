/*
MAPD724-MidTerm
 
Author: Krisuv Bohara (301274636)
Date: 2023-03-05
App Description: Landscape model Mail Pilot game made with Swift and SpriteKit
*/

import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        //fixing the size of plane for landscape
//        if(UIDevice.current.orientation.isLandscape){
            super.init(imageString: "plane", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the left boundary
        if(position.x <= -320)
        {
            position.x = -320
        }
        
        // constrain the player on the right boundary
        if(position.x >= 320)
        {
            position.x = 320
        }
    }
    
    override func Reset()
    {
        position.y = UIScreen.main.bounds.height / 4
    }
    
    func TouchMove(newPos: CGPoint)
    {
        //Plane Motion outside the bounds restricion
        if abs(newPos.y) <= 129 {
            position = newPos
        }
    }
    
}
