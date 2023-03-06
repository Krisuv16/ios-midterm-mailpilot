/*
MAPD724-MidTerm
 
Author: Krisuv Bohara (301274636)
Date: 2023-03-05
App Description: Landscape model Mail Pilot game made with Swift and SpriteKit
*/

protocol GameProtocol
{
    // Initialization
    func Start()
    
    // update every frame
    func Update()
    
    // check if the position is outside the bounds of the Screen
    func CheckBounds()
    
    // a method to reset the position
    func Reset()
}
