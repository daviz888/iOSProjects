//
//  CircleImage.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/9/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setUPView()
    }


    func setUPView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        
        setUPView()
    }
}
