//
//  FriendsController.swift
//  FeistyServer
//
//  Created by Tiewhan Smith on 2020/04/06.
//

import Foundation
import Vapor

struct FriendImage: Content {
  let userID: String
}

class FriendsController {
  
  public func getFriends() -> String {
    
    let path =  URL(fileURLWithPath: DirectoryPaths.directoryLocation.workDir)
    .appendingPathComponent(DirectoryPaths.resourceFilesLocation, isDirectory: true)
    .appendingPathComponent(DirectoryPaths.friendJSONResponeFileName, isDirectory: false)
    
    guard let data = try? Data(contentsOf: path) else {
      return "{ \"data\":\"none\" }"
    }
    
    return String(decoding: data, as: UTF8.self)
    
  }
  
  public func getFriendProfileImage(of friendID: String) -> String {
    
    let usersPath = DirectoryPaths.locationOf(user: friendID)
    
    let url =  URL(fileURLWithPath: DirectoryPaths.directoryLocation.workDir)
    .appendingPathComponent(usersPath, isDirectory: true)
    .appendingPathComponent(DirectoryPaths.profileImageFileName, isDirectory: false)
    
    guard let data = try? Data(contentsOf: url) else {
      return "{ \"data\":[] }"
    }
    
    let array = [UInt8](data)
    
    return array.convertByteArrayToJSON(withData: array)
    
  }
  
}
