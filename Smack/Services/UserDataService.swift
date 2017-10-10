//
//  UserDataService.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/8/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarname(avatarName: String) {
        self.avatarName = avatarName
    }
    
//    [0.113725490196078, 0.219607843137255, 0.282352941176471, 1]
    func returnUIColor(components: String) -> UIColor {
        
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ")
        let comma = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r, g, b, a : NSString?
        
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        
        let defaultColor = UIColor.lightGray
        
        guard let rUnwarapped = r else { return defaultColor }
        guard let gUnwarapped = g else { return defaultColor }
        guard let bUnwarapped = b else { return defaultColor }
        guard let aUnwarapped = a else { return defaultColor }
        
        let rFloat = CGFloat(rUnwarapped.doubleValue)
        let gFloat = CGFloat(gUnwarapped.doubleValue)
        let bFloat = CGFloat(bUnwarapped.doubleValue)
        let aFloat = CGFloat(aUnwarapped.doubleValue)
        
        let newUIColor = UIColor(red: rFloat, green: gFloat, blue: bFloat, alpha: aFloat)
        
        return newUIColor
    }
    
    
    
    
}
