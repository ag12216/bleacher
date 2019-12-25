//
//  Account_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class Account_VC: UIViewController {

    @IBOutlet weak var parentBackgroundView: UIView!
    @IBOutlet weak var backgroundView2: UIView!
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var playerSelectButton: UIButton!
    @IBOutlet weak var moreInfoButton: UIButton!
    @IBOutlet weak var signOutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    
    //MARK:- UI Initialisation

    func UIInitialise(){
      //  self.titleLabel.setLabel(fontsize:31.0, fontType: "SFUIDisplay-Bold", fontColor:ColorCodes.white,labelTitle:LabelTitles.account)
        self.playerSelectButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle: ButtonTitles.player_select)
        self.moreInfoButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.yellow, buttonTitle:ButtonTitles.more_info)
      self.signOutButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.sign_out)
        self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.parentBackgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.backgroundView2.backgroundColor = UIColor(hexString: ColorCodes.light_black)

       // logoImageView.image = UIImage(named: "toronto")
    }

    //MARK:- UIButton Action
    
    @IBAction func didTapPlayerSelectButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.playerProfile_VC) as! PlayerProfile_VC
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func moreInfoButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.moreInfo_VC) as! MoreInfo_VC
              self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapSignOutButton(_ sender: Any) {
    }
    
}
