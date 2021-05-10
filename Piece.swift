//
//  Piece.swift
//  Chess
//
//  Created by Tiger Coder on 4/25/21.
//

import Foundation
//import UIKit.UIImageView

class Piece {//UIImageView{
    
    var location: String

    var color: Bool! //true for white false for black
    
    init(loc: String, type: Bool){
        //super.init(image: image)
        location = loc
        color = type
    }
 
    /*
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    
    func getLocation() -> String{
        return location
    }
    
}
