//
//  ArrayExtensions.swift
//  App
//
//  Created by Tiewhan Smith on 2020/04/20.
//

import Foundation

extension Array {
  
  public func convertByteArrayToJSON(withData data: [UInt8]) -> String {
    
    let stringOfData = data.map { number in
      return "\(number)"
    }.joined(separator: ",")
    
    let jsonString = "{ \"data\" : [\(stringOfData)] }"
    
    return jsonString
    
  }
  
}
