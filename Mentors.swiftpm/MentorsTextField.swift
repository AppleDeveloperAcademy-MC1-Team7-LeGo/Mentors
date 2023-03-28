//
//  MentorsTextField.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct MentorsTextField: View {
    @State private var text = ""
    
    
    var body: some View {
        ZStack {
            TextField("", text: $text)
                .placeholder(when: text.isEmpty, placeholder: {
                    Text("팀 이름을 정확하게 적어주세요")
                        .fontWeight(.medium)
                        .foregroundColor(Color.init(hex: "AAA48E"))
                })
                .padding(.horizontal, 6)
                .foregroundColor(Color.init(hex: "292929"))
                .font(.system(size: 16, weight: .medium))
                .frame(height: 34)
                .overlay(alignment: .bottom) {
                    Capsule()
                        .foregroundColor(Color.init(hex: "F6D555"))
                        .frame(height: 1.2)
                }
        }
//        .padding(.horizontal, 26)
//        .frame(width: UIScreen.main.bounds.width - 26)

    }
}

struct MentorsTextField_Previews: PreviewProvider {
    static var previews: some View {
        MentorsTextField()
    }
}
