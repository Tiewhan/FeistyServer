//
//  DirectoryPaths.swift
//  App
//
//  Created by Tiewhan Smith on 2020/04/20.
//

import Foundation
import Vapor

public struct DirectoryPaths {
  
  public static let directoryLocation = DirectoryConfig.detect()
  public static let resourceFilesLocation = "Sources/App/ResourceFiles"
  
  public static let usersLocation = "\(resourceFilesLocation)/Users"
  
  public static let friendJSONResponeFileName = "friends.json"
  public static let profileImageFileName = "profile_image.jpg"
  
  public static func locationOf(user userID: String) -> String {
    return "\(usersLocation)/\(userID)"
  }
  
}
