//
//  SendingFiveModels.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import Foundation
import SwiftUI

struct SendingFiveModels {
    var keyWord: String
    var backgroundColor: Color

    init(keyWord: String, backgroundColor: Color) {
        self.keyWord = keyWord
        self.backgroundColor = backgroundColor
    }
}

let keyWordArray: [SendingFiveModels] = [
    SendingFiveModels(keyWord: "팀원이랑 싸웠어요", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "협업", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "소통", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "회고", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "기록", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "CBL", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "Engage", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "Investigate", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "Act", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "프레젠테이션", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "스토리텔링", backgroundColor: Color("CustomYellow")),
    SendingFiveModels(keyWord: "Domain", backgroundColor: Color("CustomRed")),
    SendingFiveModels(keyWord: "마케팅", backgroundColor: Color("CustomRed")),
    SendingFiveModels(keyWord: "비즈니스", backgroundColor: Color("CustomRed")),
    SendingFiveModels(keyWord: "Design", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "UX", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "UI", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "HIG", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "와이어프레임", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "프로토타이핑", backgroundColor: Color("CustomGreen")),
    SendingFiveModels(keyWord: "Tech", backgroundColor: Color("customBlue")),
    SendingFiveModels(keyWord: "Swift", backgroundColor: Color("customBlue")),
    SendingFiveModels(keyWord: "SwiftUI", backgroundColor: Color("customBlue")),
    SendingFiveModels(keyWord: "Xcode", backgroundColor: Color("customBlue")),
    SendingFiveModels(keyWord: "Swift Student Challenge", backgroundColor: Color("customBlue"))
]
