//
//  MentorsTextField.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct MentorsTextField: View {
    @Binding var text: String
    
    
    var body: some View {
        ZStack {
            TextField("", text: $text)
                .placeholder(when: text.isEmpty, placeholder: {
                    //아래 Text("" <-요 부분에 뭘 넣어야 하죠?? placeholder가 sending1과 sending2 각각 달라야 해요
                    Text("")
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
//
//struct MentorsTextField_Previews: PreviewProvider {
//    static var previews: some View {
////         MentorsTextField(text: "")
//    }
//}
