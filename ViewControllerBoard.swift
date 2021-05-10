//
//  ViewControllerBoard.swift
//  Chess
//
//  Created by Tiger Coder on 4/16/21.
//

import UIKit

class ViewControllerBoard: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return pickerData.count
        }
        if pickerView.tag == 2{
            return pickerData3.count
        }
        return pickerData2.count
    }
    
    var piece: Piece!
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            piece = pickerData[row]
            return "\(pickerData[row])"
        }
        if pickerView.tag == 2 {
            piece = pickerData3[row]
            return "\(pickerData3[row])"
        }
        return "\(pickerData2[row])"
    }

    //Outlets:
    @IBOutlet weak var whiteMoveLabel: UILabel!
    @IBOutlet weak var blackMoveLabel: UILabel!
    @IBOutlet weak var whiteSquareLabek: UILabel!
    @IBOutlet weak var blackSquareLabel: UILabel!
    @IBOutlet weak var whitePiecePV: UIPickerView!
    @IBOutlet weak var blackPiecePV: UIPickerView!
    @IBOutlet weak var whiteSquarePV: UIPickerView!
    @IBOutlet weak var blackSquarePV: UIPickerView!
    
    //Spaces on board:
    @IBOutlet weak var A1: UIImageView!
    @IBOutlet weak var A2: UIImageView!
    @IBOutlet weak var A3: UIImageView!
    @IBOutlet weak var A4: UIImageView!
    @IBOutlet weak var A5: UIImageView!
    @IBOutlet weak var A6: UIImageView!
    @IBOutlet weak var A7: UIImageView!
    @IBOutlet weak var A8: UIImageView!
    
    @IBOutlet weak var B1: UIImageView!
    @IBOutlet weak var B2: UIImageView!
    @IBOutlet weak var B3: UIImageView!
    @IBOutlet weak var B4: UIImageView!
    @IBOutlet weak var B5: UIImageView!
    @IBOutlet weak var B6: UIImageView!
    @IBOutlet weak var B8: UIImageView!
    @IBOutlet weak var B7: UIImageView!
    
    @IBOutlet weak var C1: UIImageView!
    @IBOutlet weak var C3: UIImageView!
    @IBOutlet weak var C2: UIImageView!
    @IBOutlet weak var C4: UIImageView!
    @IBOutlet weak var C6: UIImageView!
    @IBOutlet weak var C5: UIImageView!
    @IBOutlet weak var C7: UIImageView!
    @IBOutlet weak var C8: UIImageView!
    
    @IBOutlet weak var D1: UIImageView!
    @IBOutlet weak var D2: UIImageView!
    @IBOutlet weak var D3: UIImageView!
    @IBOutlet weak var D4: UIImageView!
    @IBOutlet weak var D5: UIImageView!
    @IBOutlet weak var D6: UIImageView!
    @IBOutlet weak var D7: UIImageView!
    @IBOutlet weak var D8: UIImageView!
    
    @IBOutlet weak var E1: UIImageView!
    @IBOutlet weak var E2: UIImageView!
    @IBOutlet weak var E3: UIImageView!
    @IBOutlet weak var E4: UIImageView!
    @IBOutlet weak var E5: UIImageView!
    @IBOutlet weak var E6: UIImageView!
    @IBOutlet weak var E7: UIImageView!
    @IBOutlet weak var E8: UIImageView!
    
    @IBOutlet weak var F1: UIImageView!
    @IBOutlet weak var F2: UIImageView!
    @IBOutlet weak var F3: UIImageView!
    @IBOutlet weak var F4: UIImageView!
    @IBOutlet weak var F6: UIImageView!
    @IBOutlet weak var F5: UIImageView!
    @IBOutlet weak var F7: UIImageView!
    @IBOutlet weak var F8: UIImageView!
    
    @IBOutlet weak var G1: UIImageView!
    @IBOutlet weak var G2: UIImageView!
    @IBOutlet weak var G3: UIImageView!
    @IBOutlet weak var G4: UIImageView!
    @IBOutlet weak var G5: UIImageView!
    @IBOutlet weak var G6: UIImageView!
    @IBOutlet weak var G7: UIImageView!
    @IBOutlet weak var G8: UIImageView!
    
    @IBOutlet weak var H1: UIImageView!
    @IBOutlet weak var H2: UIImageView!
    @IBOutlet weak var H3: UIImageView!
    @IBOutlet weak var H4: UIImageView!
    @IBOutlet weak var H5: UIImageView!
    @IBOutlet weak var H6: UIImageView!
    @IBOutlet weak var H7: UIImageView!
    @IBOutlet weak var H8: UIImageView!
    
    var spaces: [UIImageView] = [UIImageView]()
    //Pieces
    
    var WhiteQRPawn: Piece!
    var WhiteQKPawn: Piece!
    var WhiteQBPawn: Piece!
    var WhiteQPawn: Piece!
    var WhiteKPawn: Piece!
    var WhiteKBPawn: Piece!
    var WhiteKKPawn: Piece!
    var WhiteKRPawn: Piece!
    var WhiteQRook: Piece!
    var WhiteQKnight: Piece!
    var WhiteQBishop: Piece!
    var WhiteQueen: Piece!
    var WhiteKing: Piece!
    var WhiteKBishop: Piece!
    var WhiteKKnight: Piece!
    var WhiteKRook: Piece!
    
    var BlackQRPawn: Piece!
    var BlackQKPawn: Piece!
    var BlackQBPawn: Piece!
    var BlackQPawn: Piece!
    var BlackKPawn: Piece!
    var BlackKBPawn: Piece!
    var BlackKKPawn: Piece!
    var BlackKRPawn: Piece!
    var BlackQRook: Piece!
    var BlackQKnight: Piece!
    var BlackQBishop: Piece!
    var BlackQueen: Piece!
    var BlackKing: Piece!
    var BlackKBishop: Piece!
    var BlackKKnight: Piece!
    var BlackKRook: Piece!

    
    func makePieces(){
        WhiteQRPawn = Piece(loc: "A2", type: true)
        WhiteQKPawn = Piece(loc: "B2", type: true)
        WhiteQBPawn = Piece(loc: "C2", type: true)
        WhiteQPawn = Piece(loc: "D2", type: true)
        WhiteKPawn = Piece(loc: "E2", type: true)
        WhiteKBPawn = Piece(loc: "F2", type: true)
        WhiteKKPawn = Piece(loc: "G2", type: true)
        WhiteKRPawn = Piece(loc: "H2", type: true)
        WhiteQRook = Piece(loc: "A1", type: true)
        WhiteQKnight = Piece(loc: "B1", type: true)
        WhiteQBishop = Piece(loc: "C1", type: true)
        WhiteQueen = Piece(loc: "D1", type: true)
        WhiteKing = Piece(loc: "E1", type: true)
        WhiteKBishop = Piece(loc: "F1", type: true)
        WhiteKKnight = Piece(loc: "G1", type: true)
        WhiteKRook = Piece(loc: "H1", type: true)
        
        BlackQRPawn = Piece(loc: "A7", type: false)
        BlackQKPawn = Piece(loc: "B7", type: false)
        BlackQBPawn = Piece(loc: "C7", type: false)
        BlackQPawn = Piece(loc: "D7", type: false)
        BlackKPawn = Piece(loc: "E7", type: false)
        BlackKBPawn = Piece(loc: "F7", type: false)
        BlackKKPawn = Piece(loc: "G7", type: false)
        BlackKRPawn = Piece(loc: "H7", type: false)
        BlackQRook = Piece(loc: "H8", type: false)
        BlackQKnight = Piece(loc: "G8", type: false)
        BlackQBishop = Piece(loc: "F8", type: false)
        BlackQueen = Piece(loc: "E8", type: false)
        BlackKing = Piece(loc: "D8", type: false)
        BlackKBishop = Piece(loc: "C8", type: false)
        BlackKKnight = Piece(loc: "B8", type: false)
        BlackKRook = Piece(loc: "A8", type: false)
    }
        
    var turn = 1 //1 for white turn, -1 for black
    
    var pickerData: [Piece] = [Piece]()
    var pickerData2: [String] = [String]()
    var pickerData3: [Piece] = [Piece]()

    override func viewDidLoad() {
        super.viewDidLoad()
        blackMoveLabel.isHidden = true
        blackPiecePV.isHidden = true
        blackSquarePV.isHidden = true
        blackSquareLabel.isHidden = true
        makePieces()
        spaces = [A1,A2,A3,A4,A5,A6,A7,A8,B1,B2,B3,B4,B5,B6,B7,B8,C1,C2,C3,C4,C5,C6,C7,C8,D1,D2,D3,D4,D5,D6,D7,D8,E1,E2,E3,E4,E5,E6,E7,E8,F1,F2,F3,F4,F5,F6,F7,F8,G1,G2,G3,G4,G5,G6,G7,G8,H1,H2,H3,H4,H5,H6,H7,H8]
        pickerData = [WhiteQRPawn, WhiteQKPawn, WhiteQBPawn, WhiteQPawn, WhiteKPawn, WhiteKBPawn, WhiteKKPawn, WhiteKRPawn, WhiteQRook, WhiteQKnight, WhiteQBishop, WhiteQueen, WhiteKing, WhiteKBishop, WhiteKKnight, WhiteKRook]
        pickerData2 = ["A1","A2","A3","A4","A5","A6","A7","A8","B1","B2","B3","B4","B5","B6","B7","B8","C1","C2","C3","C4","C5","C6","C7","C8","D1","D2","D3","D4","D5","D6","D7","D8","E1","E2","E3","E4","E5","E6","E7","E8","F1","F2","F3","F4","F5","F6","F7","F8","G1","G2","G3","G4","G5","G6","G7","G8","H1","H2","H3","H4","H5","H6","H7","H8"]
        pickerData3 = [BlackQRPawn, BlackQKPawn, BlackQBPawn, BlackQPawn, BlackKPawn, BlackKBPawn, BlackKKPawn, BlackKRPawn, BlackQRook, BlackQKnight, BlackQBishop, BlackQueen, BlackKing, BlackKBishop, BlackKKnight, BlackKRook]

        
        blackPiecePV.delegate = self
        blackPiecePV.dataSource = self
        
        blackSquarePV.dataSource = self
        blackSquarePV.delegate = self
        
        whitePiecePV.delegate = self
        whitePiecePV.dataSource = self
        
        whiteSquarePV.delegate = self
        whiteSquarePV.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func moveAction(_ sender: UIButton) {
        if (turn == 1){
            turn = turn * -1
            whiteMoveLabel.isHidden = true
            whitePiecePV.isHidden = true
            whiteSquarePV.isHidden = true
            whiteSquareLabek.isHidden = true
            blackMoveLabel.isHidden = false
            blackPiecePV.isHidden = false
            blackSquarePV.isHidden = false
            blackSquareLabel.isHidden = false
            //code to move
            var temp: Int = 0
            for item in pickerData {
                if (item.getLocation() == pickerData[temp]){
                    //code to move
                    /*
                    
                     */
                }
            }
        }
        else{
            turn = turn * -1
            blackMoveLabel.isHidden = true
            blackPiecePV.isHidden = true
            blackSquarePV.isHidden = true
            blackSquareLabel.isHidden = true
            whiteMoveLabel.isHidden = false
            whitePiecePV.isHidden = false
            whiteSquarePV.isHidden = false
            whiteSquareLabek.isHidden = false
            //code to move
        }
    }
}
