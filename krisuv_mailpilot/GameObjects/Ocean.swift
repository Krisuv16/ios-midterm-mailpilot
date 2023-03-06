/*
MAPD724-MidTerm
 
Author: Krisuv Bohara (301274636)
Date: 2023-03-05
App Description: Landscape model Mail Pilot game made with Swift and SpriteKit
*/

import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // constructor / initializer
    init()
    {
        //fixing the size of ocean for landscape
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -733)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 773
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
