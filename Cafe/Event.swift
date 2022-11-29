//
//  Event.swift
//  Cafe
//
//  Created by 김재영 on 2022/11/28.
//

import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
}
