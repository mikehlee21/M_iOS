//
//  Course.swift
//  Manhattan
//
//  Created by gOd on 8/10/17.
//  Copyright © 2017 gOd. All rights reserved.
//

import Foundation
import SwiftyJSON

class Course {
    var id: Int?
    var title: String?
    var description: String?
    var imgBack: String?
    var price: Int?
    var user: User?
    
    init () {
        id = 0
        title = ""
        description = ""
        imgBack = ""
        price = 0
        user = User()
    }
    
    init (param: [String: JSON]) {
        id = param["id"]?.intValue
        title = param["title"]?.stringValue
        description = param["description"]?.stringValue
        let array = param["sections"]?.arrayValue
        price = param["price"]?.intValue
        imgBack = param["imgBack"]?.stringValue
        user = User(user: (param["userInfo"]?.dictionaryValue)!)
    }
}