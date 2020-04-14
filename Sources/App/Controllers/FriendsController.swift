//
//  FriendsController.swift
//  FeistyServer
//
//  Created by Tiewhan Smith on 2020/04/06.
//

import Foundation
import Vapor

class FriendsController {
  
  public func getFriends() -> String {
    
    let directory = DirectoryConfig.detect()
    let configDir = "Sources/App/ResourceFiles"
    
    let path =  URL(fileURLWithPath: directory.workDir)
    .appendingPathComponent(configDir, isDirectory: true)
    .appendingPathComponent("friends.json", isDirectory: false)
    
    guard let data = try? Data(contentsOf: path) else {
      return "{ \"data\":\"none\" }"
    }
    
    return String(decoding: data, as: UTF8.self)
    
  }
  
}
