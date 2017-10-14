//
//  MessageService.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/12/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                // syntax statement for swift 4
                //                do {
                //                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
                //                } catch let error {
                //                    debugPrint(error as Any)
                //                }
                //                print(self.channels)
                // old ways
                if let json = JSON(data: data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                    }
                    if self.channels.count > 0 {
                        print(self.channels[0].channelTitle)
                    }
                    //                    } else {
                    //                        //Testing purpocess
                    ////                        let channel = Channel(channelTitle: "ChaChannel 2", channelDescription: "Channel Description", id: "123456")
                    ////                        let channel2 = Channel(channelTitle: "ChaChannel 7", channelDescription: "Channel 7 Description", id: "123456")
                    ////                        self.channels.append(channel)
                    ////                        self.channels.append(channel2)
                    //                    }
                    completion(true)
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}
