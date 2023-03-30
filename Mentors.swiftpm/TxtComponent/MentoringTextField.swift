//
//  MentoringTextField.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct MentoringTextField: View {
    @Binding var text: String

    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.init(hex: "F7F5EF"))
                .frame(height: 514)
            TextEditor(text: $text)
                .hideBackground()
                .multilineTextAlignment(.leading)
                .frame(maxHeight: 514)
                .padding(.vertical, 18)
                .padding(.horizontal, 15)
                .foregroundColor(Color.init(hex: "292929"))
                .font(.sandoll(size: 14, weight: .medium))
            
        }
        .background(Color.init(hex: "F9F9F9"))
        
    }
}
//
//struct MentoringTextField_Previews: PreviewProvider {
//    static var previews: some View {
//        MentoringTextField()
//    }
//}
