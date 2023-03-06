/*
MAPD724-MidTerm
 
Author: Krisuv Bohara (301274636)
Date: 2023-03-05
App Description: Landscape model Mail Pilot game made with Swift and SpriteKit
*/

import GameplayKit
import SpriteKit

class Cloud : GameObject
{
    // initializer / constructor
    init()
    {
        //fixing the size of cloud for landscape
        super.init(imageString: "cloud", initialScale: 0.5)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func Start()
    {
        zPosition = Layer.cloud.rawValue
        alpha = 0.5 // 50% transparent
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        //In Landscape orientation X axis should be reseted.
        if(position.x <= -500)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        // randomize the vertical speed: 5 to 10
        verticalSpeed = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
        
        // randomize the horizontal speed: -2 to 2
        horizontalSpeed = CGFloat((randomSource?.nextUniform())! * 4.0) - 2.0 
        
        // get a pseudo random number for the X position: -262 to 262
        let randomX:Int = (randomSource?.nextInt(upperBound: 300))! - 262
//        position.x = CGFloat(randomX)
        position.y = CGFloat(randomX)
        
        // get a pseudo random number 756 to 776
        let randomY:Int = (randomSource?.nextInt(upperBound: 20))! + 756
//        position.y = CGFloat(randomY)
        position.x = CGFloat(randomY)
        isColliding = false
    }
    
    // public method
    func Move()
    {
        position.y -= horizontalSpeed!
        position.x -= verticalSpeed!
    }
}
