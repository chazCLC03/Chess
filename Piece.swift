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
    
    var name: String!
    
    init(loc: String, type: Bool, nombre: String){
        //super.init(image: image)
        location = loc
        color = type
        name = nombre
    }
 
    /*
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    */
    
    func getLocation() -> String{
        return location
    }
    
    func getName() -> String{
        return name
    }
    
}
