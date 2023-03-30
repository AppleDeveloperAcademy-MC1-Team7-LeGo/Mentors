//
//  ColorChangeCustomButton.swift
//  Mentors
//
//  Created by xnoag on 2023/03/30.
//

import SwiftUI

struct ColorChangeCustomButton: View {
    
    
    @State private var didTapTap: Bool = false
    
    var body: some View {
        
        Button(action: {
            if didTapTap{
                self.didTapTap = false
            } else {
                self.didTapTap = true
            }
            
        }) {
            VStack {
                Image(systemName: "x.square.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(hex: "E5E2D7"))
                    .padding(.bottom, 7)
                Text("첨부하지 않음")
                    .font(.sandoll(size: 14, weight: .regular))
                    .foregroundColor(Color(hex: "292929"))
                    .fixedSize()
            }
            .fixedSize()
            .frame(width: 140, height: 94)
            .cornerRadius(10)
        }
        .background(didTapTap ? Color(hex: "F6D555") : Color(hex: "F4F4F0"))
        .cornerRadius(10)
    }
}
