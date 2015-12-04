//
//  BaseResponse.swift
//  MainScene
//
//  Created by ishant on 04/12/15.
//  Copyright © 2015 ishant. All rights reserved.
//

import Foundation
import ObjectMapper

class BaseResponse: Mappable {
    
    var message: String?
    var status: String?
    var disabled: Bool?
    var update: Bool?
    
    required init?(_ map: Map) {
    }
    
    func mapping(map: Map) {
        message     <- map["message"]
        status      <- map["status"]
        disabled    <- map["disabled"]
        update      <- map["update"]
    }
}
