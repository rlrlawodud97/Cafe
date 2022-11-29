//
//  Tab.swift
//  Cafe
//
//  Created by 김재영 on 2022/11/26.
//

import SwiftUI

enum Tab {
    case home
    case other
    
    // associate value
    var textItem: Text {
        switch self {
        case .home: return Text("Home")
        case .other: return Text("Other")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .other: return Image(systemName: "ellipsis")
        }
    }
}
