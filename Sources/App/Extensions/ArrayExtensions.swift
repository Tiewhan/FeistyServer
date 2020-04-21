//
//  ArrayExtensions.swift
//  App
//
//  Created by Tiewhan Smith on 2020/04/20.
//

import Foundation

extension Array {
  
  public func convertByteArrayToJSON(withData data: [UInt8]) -> String {
    
    var jsonString = "{ \"data\" : [ "
    var isFirstIteration = true
    
    data.forEach { number in
      
      if isFirstIteration {
        isFirstIteration = false
        jsonString += "\(number)"
      } else {
        jsonString += ",\(number)"
      }
      
    }
    
    jsonString += " ] }"
    
    return jsonString
    
  }
  
}
