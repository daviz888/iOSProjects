//
//  Channel.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/12/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import Foundation

struct Channel : Decodable {
    //Note: use Decodable protocole which is new to swift 4
//    public private(set) var _id: String!
//    public private(set) var name: String!
//    public private(set) var description: String!
//    public private(set) var __v: Int?
//
    
    public private(set) var channelTitle: String!
    public private(set) var channelDescription: String!
    public private(set) var id: String!
}
