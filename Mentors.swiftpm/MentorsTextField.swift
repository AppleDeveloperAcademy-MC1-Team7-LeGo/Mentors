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
        TextField("팀 이름을 정확하게 적어주세요", text: $text)
            .padding()
            .background(Color.gray)
            .cornerRadius(10)
            .foregroundColor(.white)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 2))
            .padding(.horizontal)
            .multilineTextAlignment(.center)
            .keyboardType(.default)
    }
}

struct MentorsTextField_Previews: PreviewProvider {
    static var previews: some View {
        MentorsTextField()
    }
}
