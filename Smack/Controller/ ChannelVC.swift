//
//  ChannelVC.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/5/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }


}
