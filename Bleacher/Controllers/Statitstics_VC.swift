//
//  Statitstics_VC.swift
//  Bleacher
//
//  Created by Mindbowser on 18/12/19.
//  Copyright © 2019 Mindbowser. All rights reserved.
//

import UIKit

class Statitstics_VC: UIViewController {

    @IBOutlet weak var parentBackgroundView: UIView!
    @IBOutlet weak var childBackgroundView: UIView!
    @IBOutlet weak var collectionViewBackgroundView: UIView!
    @IBOutlet weak var instructiionLabel: UILabel!
    @IBOutlet weak var saveGameButton: UIButton!
    @IBOutlet weak var statisticsCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.UIInitialise()
    }
    


    
    
    //MARK:- UI Initialisation

    func UIInitialise(){
        
        self.parentBackgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.childBackgroundView.backgroundColor = UIColor(hexString: ColorCodes.light_black)
        self.saveGameButton.createHalfRoundedButton(buttonBackgroundColor:ColorCodes.red, buttonTitle:ButtonTitles.save_game)
        statisticsCollectionView.register( UINib(nibName:CellIdentifiers.statisticsCollectionViewCell, bundle: nil), forCellWithReuseIdentifier:CellIdentifiers.statisticsCollectionViewCell)

    }
}




extension Statitstics_VC: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellIdentifiers.statisticsCollectionViewCell, for: indexPath) as! StatisticsCollectionViewCell
    
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:180, height :180)
       }
}



