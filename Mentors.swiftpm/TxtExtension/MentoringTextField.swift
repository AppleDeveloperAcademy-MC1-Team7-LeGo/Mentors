//
//  MentoringTextField.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct MentoringTextField: View {
    @State private var text = ""
//    init() {
//        UITextView.appearance().backgroundColor = .clear
//    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.init(hex: "F7F5EF"))
                .frame(height: 514)
                .padding(.vertical, 18)
//                .padding(.horizontal, 15)
                TextEditor(text: $text)
                    .hideBackground()
                    .multilineTextAlignment(.leading)
//                    .frame(height: 514)
                    .padding(.vertical, 18)
                    .padding(.horizontal, 15)
                    .foregroundColor(Color.init(hex: "292929"))
                    .font(.system(size: 14, weight: .medium))
//                    .cornerRadius(10)
            
        }
        .background(Color.init(hex: "F9F9F9"))
        //        .padding(.horizontal, 26)
        //        .frame(width: UIScreen.main.bounds.width - 26)
        
    }
}

struct MentoringTextField_Previews: PreviewProvider {
    static var previews: some View {
        MentoringTextField()
    }
}

//iOS16 이상
extension TextEditor {
    @ViewBuilder func hideBackground() -> some View {
        if #available(iOS 16, *) {
            self.scrollContentBackground(.hidden)
        } else {
            self
        }
    }
}
