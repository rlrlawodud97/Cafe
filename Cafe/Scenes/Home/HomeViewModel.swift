//
//  HomeViewModel.swift
//  Cafe
//
//  Created by 김재영 on 2022/11/29.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var isNeedToReload = false {
        didSet {
            guard isNeedToReload else { return }
            
            coffeeMenu.shuffle()
            events.shuffle()
            
            isNeedToReload = false

        }
    }
    
    @Published var coffeeMenu: [CoffeeMenu] = [
        CoffeeMenu(image: Image("coffee"), name: "아메리카노"),
        CoffeeMenu(image: Image("coffee"), name: "카푸치노"),
        CoffeeMenu(image: Image("coffee"), name: "카페라떼"),
        CoffeeMenu(image: Image("coffee"), name: "바닐라라떼"),
        CoffeeMenu(image: Image("coffee"), name: "코코아"),
        CoffeeMenu(image: Image("coffee"), name: "콜드블루"),
    ]
    
    @Published var events: [Event] = [
        Event(image: Image("coffee"), title: "제주도 한정 메뉴", description: "제주도 한정 음료가 출시되었습니다."),
        Event(image: Image("coffee"), title: "겨울 한정 메뉴", description: "겨울 한정 토피넛라떼가 출시되었습니다.")
    ]
}
