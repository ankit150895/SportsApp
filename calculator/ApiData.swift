//
//  ApiData.swift
//  calculator
//
//  Created by TryCatch Classes on 11/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import Foundation
struct Wallpapers:Decodable {
    var id : String
    var image : String
}
struct Quotes:Decodable {
    var id : String
    var image : String
}
struct Videos:Decodable {
    var id : String
    var title : String
    var url : String
    var image : String
}
