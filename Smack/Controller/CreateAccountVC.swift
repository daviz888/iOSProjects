//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/6/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
