//
//  PropertyResponse.swift
//  MainScene
//
//  Created by ishant on 04/12/15.
//  Copyright © 2015 ishant. All rights reserved.
//

import Foundation
import ObjectMapper

class PropertyResponse : Mappable {
    
    var data: Data?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        data <- map["data"]
    }
    
    class Data : Mappable {
        var properties = [Property]()
        required init?(_ map: Map) {
            
        }
        
        func mapping(map: Map) {
            properties <- map["properties"]
        }
        
        func getProperties()->[Property]{
            return properties
        }
    }
}