//
//  EditPlayerName_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class EditPlayerName_VC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var editNameTextfield: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    

    
    
    //MARK:- UI Initialisation

         func UIInitialise(){
          
             self.editNameTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.email_address, textfieldBorderColor:ColorCodes.red, textfieldtextColor: ColorCodes.white, fontName:"")
             self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
             self.submitButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.submit)

            // logoImageView.image = UIImage(named: "toronto")
         }
      
    
    
    // MARK: - Button Actions

    
    @IBAction func didTapSubmitButton(_ sender: Any) {
        
        
    }
}
