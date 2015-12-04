//
//  Property.swift
//  MainScene
//
//  Created by ishant on 04/12/15.
//  Copyright © 2015 ishant. All rights reserved.
//

import Foundation
import ObjectMapper

class Property : Mappable {
    var uuid: String{
        get{
            return self.uuid
        }
    }
    
    var name: String{
        get{
            return self.name
        }
        set{
            
        }
    }
    
    var address_line_one: String?
    
    var address_line_two: String?
    
    var city: String?
    
    var active: Bool?
    
    var imageUrl: String?
    
    var beaconUuid: String?
    
    var isCODEnable: String?
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        uuid <- map["uuid"]
        name <- map["name"]
        address_line_one <- map["address_line_one"]
        address_line_two <- map["address_line_two"]
        city <- map["city"]
        active <- map["active"]
        imageUrl <- map["imageUrl"]
        beaconUuid <- map["beaconUuid"]
        isCODEnable <- map["is_cod"]
    }
    
    func getName()-> String{
        return name!
    }
}