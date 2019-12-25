//
//  ResetPassword_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class ResetPassword_VC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    

    //MARK:- UI Initialisation

      func UIInitialise(){
        
        self.titleLabel.setLabel(fontsize:31.0, fontType: "SFUIDisplay-Bold", fontColor:ColorCodes.white,labelTitle:LabelTitles.reset_pw)
        self.sendButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle: ButtonTitles.send)
        self.emailTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.email_address, textfieldBorderColor:ColorCodes.red, textfieldtextColor: ColorCodes.white, fontName:"")
        self.messageLabel.textColor = UIColor(hexString: ColorCodes.dark_gray)
        self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
      
         // logoImageView.image = UIImage(named: "toronto")
      }
      
}
