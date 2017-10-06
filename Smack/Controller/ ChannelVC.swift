//
//  ChannelVC.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/5/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
  //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    @IBAction func loginBtnPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    
}
