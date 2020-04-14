//
//  LoginController.swift
//  App
//
//  Created by Tiewhan Smith on 2020/04/07.
//

import Foundation
import Vapor

struct LoginCredentials: Content {
  let username: String
  let password: String
}

class LoginController {
  
  func verifyLoginCredentials(_ loginCredentials: LoginCredentials) -> String {
    
    if loginCredentials.username == "tiewhan" && loginCredentials.password == "cat3" {
      return createLoginJSONResponse(isValidCredentials: true)
    }
    
    return createLoginJSONResponse(isValidCredentials: false)
    
  }
  
  private func createLoginJSONResponse(isValidCredentials: Bool) -> String {
    
    return "{ \"can_login\":\(isValidCredentials) }"
    
  }
  
}
