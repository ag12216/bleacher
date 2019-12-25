//
//  NewPlayer_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class NewPlayer_VC: UIViewController {

    @IBOutlet weak var createPlayerButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UIInitialise()
    }
    
    
    
    //MARK:- UI Initialisation

       func UIInitialise(){
        
        self.nameTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.enter_name, textfieldBorderColor:ColorCodes.red, textfieldtextColor: ColorCodes.white, fontName:"")
       self.createPlayerButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.create_player)

       }
    
    

    @IBAction func didTapCreatePlayerButton(_ sender: Any) {
    }
    
}
