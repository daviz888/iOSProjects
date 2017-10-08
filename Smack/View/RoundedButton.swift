//
//  RoundedButton.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/8/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadious: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadious
        }
    }

    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadious
    }
}
