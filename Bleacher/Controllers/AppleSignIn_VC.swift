//
//  AppleSignIn_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class AppleSignIn_VC: UIViewController {

    @IBOutlet weak var backgroundChildView: UIView!
    @IBOutlet weak var backgroundParentView: UIView!
    @IBOutlet weak var appleSignInButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var backgroundRotateImageView: UIImageView!
    
    @IBOutlet weak var backgroundAlphaView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
        animations()
        
        
       
    }
    

  //MARK:- UI Initialisation

    func UIInitialise(){
        //self.titleLabel.setLabel(fontsize:31.0, fontType: "SFUIDisplay-Bold", fontColor:ColorCodes.white,labelTitle:LabelTitles.bleacher)
        self.loginButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle: ButtonTitles.login)
        self.createAccountButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.yellow, buttonTitle:ButtonTitles.create_account)
        self.appleSignInButton.layer.cornerRadius = 8
        self.appleSignInButton.setTitle(ButtonTitles.apple_sign_in, for: .normal)
        self.appleSignInButton.tintColor = UIColor(hexString: ColorCodes.black)
//        self.backgroundParentView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
//        self.backgroundChildView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.backgroundAlphaView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        
        self.backgroundParentView.sendSubviewToBack(backgroundRotateImageView)
        backgroundRotateImageView.image = #imageLiteral(resourceName: "background")
        backgroundRotateImageView.contentMode = .scaleAspectFit
       // logoImageView.image = UIImage(named: "toronto")
    }
    
    //MARK:- UI Button Actions
    
    @IBAction func didTapLoginButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.logIn_VC) as! LogIn_VC
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBAction func didTapCreateAccountButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.newAccount_VC) as! NewAccount_VC
             self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func animations(){
        
        Animations.sharedInstance.animateWithScale(time: 1.5, delay: 0.0, animationOption: .curveEaseIn, 0.8, scaleY: 0.8, backgroundRotateImageView)
        
        Animations.sharedInstance.moveToViewwithAnimation(logoImageView, _duration: 1.5, _scaleX: 0.5, _scaleY: 0.5, _translateX: 0.0, _translateY: -450.0)
       
        Animations.sharedInstance.animateToHideView(toView: backgroundAlphaView, _duration: 1.5)
   
    }

    
}
