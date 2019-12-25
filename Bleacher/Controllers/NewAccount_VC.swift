//
//  NewAccount_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class NewAccount_VC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var nameTextfield: UITextField!
    @IBOutlet weak var termsAndConditionLabel: UILabel!
    @IBOutlet weak var createAccountButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    

     //MARK:- UI Initialisation

         func UIInitialise(){
          
         //self.titleLabel.setLabel(fontsize:31.0, fontType:"",fontColor:ColorCodes.white,labelTitle:LabelTitles.login)
          self.passwordTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.password, textfieldBorderColor:ColorCodes.yellow, textfieldtextColor: ColorCodes.white, fontName:"")
        self.nameTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.enter_name, textfieldBorderColor:ColorCodes.red, textfieldtextColor: ColorCodes.white, fontName:"")
            termsAndConditionLabel.setLabel(fontsize: 8.0, fontType: "", fontColor: ColorCodes.dark_gray, labelTitle: LabelTitles.terms_and_conditions)
        self.createAccountButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.create_account)
        self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)

            // logoImageView.image = UIImage(named: "toronto")
         }
      
  //MARK:- UIButton Action
    
    
    @IBAction func didTapCreateAccountButton(_ sender: Any) {
     let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.account_VC) as! Account_VC
         self.navigationController?.pushViewController(vc, animated: true)
    }
}
