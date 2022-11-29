//
//  User.swift
//  Cafe
//
//  Created by 김재영 on 2022/11/28.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "재영", account: "ABCD.EFGHI")
}
