//
//  PlayerProfile_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class PlayerProfile_VC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newGaneButton: UIButton!
    @IBOutlet weak var gameLogButton: UIButton!
    @IBOutlet weak var achivementsButton: UIButton!
    @IBOutlet weak var editNameButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    
    @IBOutlet weak var deletePlayerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    

    
    //MARK:- UI Initialisation

         func UIInitialise(){
            
            self.newGaneButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.new_game)
            self.gameLogButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.yellow, buttonTitle:ButtonTitles.game_log)
            self.achivementsButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.sky_blue, buttonTitle:ButtonTitles.achivements)
            self.editNameButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.purple, buttonTitle:ButtonTitles.edit_name)
            self.accountButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.green, buttonTitle:ButtonTitles.account)
            self.deletePlayerButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.delete_player)
            self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
            // logoImageView.image = UIImage(named: "toronto")
         }
      
    
    //MARK:- Button Actions

    @IBAction func didTapNewGameButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.statitstics_VC) as! Statitstics_VC
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func didTapGameLogButton(_ sender: Any) {
    }
    
    @IBAction func didTapAchivementsButton(_ sender: Any) {
    }
    
    @IBAction func editNameButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.editPlayerName_VC) as! EditPlayerName_VC
              self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapAccountButton(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.account_VC) as! Account_VC
        self.navigationController?.pushViewController(vc, animated: true)
             
    }
    
    
    @IBAction func didTapDeleteButton(_ sender: Any) {
    }
    
    
}
