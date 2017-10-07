//
//  Constants.swift
//  Smack
//
//  Created by Dovvy Pacamalan on 10/6/17.
//  Copyright © 2017 Dovvy Pacamalan. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://chattychatjb.herokuapp.com/v1/"

//let URL_REGISTER = "\(BASE_URL)account/register"
let URL_REGISTER = "http://localhost:3005/v1/account/register"

//Seques
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "to_create_account"
let UNWIND = "unwindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"
