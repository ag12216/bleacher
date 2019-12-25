//
//  MoreInfo_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class MoreInfo_VC: UIViewController {

    @IBOutlet weak var contactUsLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var instagramButton: UIButton!
    @IBOutlet weak var termsOfServiceButton: UIButton!
    @IBOutlet weak var privacyPolicyButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
        
    }
    

    
    //MARK:- UI Initialisation

      func UIInitialise(){
        
          self.titleLabel.setLabel(fontsize:31.0, fontType: "SFUIDisplay-Bold", fontColor:ColorCodes.white,labelTitle:LabelTitles.more_info)
        self.backButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.back)
        self.contactUsLabel.textColor = UIColor(hexString: ColorCodes.dark_gray)
         // logoImageView.image = UIImage(named: "toronto")
      }

    
    
    @IBAction func didTapBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
