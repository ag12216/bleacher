//
//  Splash_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class Splash_VC: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var logoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
  
     
    @IBAction func didTapLogoButton(_ sender: Any) {
      
        let vc = self.storyboard?.instantiateViewController(identifier:StoryboardIdentifiers.appleSignIn_VC) as! AppleSignIn_VC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
 
    //MARK:- UI Initialisation

    func UIInitialise()  {
   
        self.backgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
       // logoImageView.image = UIImage(named: "toronto")
    }

}
