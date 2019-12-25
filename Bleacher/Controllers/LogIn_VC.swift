//
//  LogIn_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class LogIn_VC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var resetPasswordButton: UIButton!
    @IBOutlet weak var setUpNewAccountButton: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var backgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    

    
    
    
    
    //MARK:- UI Initialisation

       func UIInitialise(){
        
       // self.titleLabel.setLabel(fontsize:31.0, fontType:FontTypes.sf_pro_rounded_bold, fontColor:ColorCodes.white,labelTitle:LabelTitles.login)
        self.emailTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.email_address, textfieldBorderColor:ColorCodes.red, textfieldtextColor: ColorCodes.white, fontName:"")
        self.passwordTextfield.createBorderTextfield(textFieldPlaceHolder:PlaceHolders.password, textfieldBorderColor:ColorCodes.yellow, textfieldtextColor: ColorCodes.white, fontName:"")
        self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.setUpNewAccountButton.normalButtonSetup(buttonTitle:ButtonTitles.setup_new_account)
        self.resetPasswordButton.normalButtonSetup(buttonTitle:ButtonTitles.reset_password)
        self.logInButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.sign_in)

          // logoImageView.image = UIImage(named: "toronto")
       }
    
    //MARK:- Button Actions

    @IBAction func didTapLoginButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.account_VC) as! Account_VC
           self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func didTapSetUpNewAccount(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.newAccount_VC) as! NewAccount_VC
                 self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func didTapResetPassword(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.resetPassword_VC) as! ResetPassword_VC
        self.navigationController?.pushViewController(vc, animated: true)
               
    }
}
