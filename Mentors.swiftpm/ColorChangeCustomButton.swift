//
//  ColorChangeCustomButton.swift
//  Mentors
//
//  Created by xnoag on 2023/03/30.
//

import SwiftUI

struct ColorChangeCustomButton: View {
    
    var namename: String
    
    init(namename: String) {
        self.namename = namename
    }
    
    @State private var didTap: Bool = false
    
    var body: some View {
        
        Button(action: {
            if didTap{
                self.didTap = false
            } else {
                self.didTap = true
            }
            
        }) {
            Text(namename)
                .font(.sandoll(size: 18, weight: .semibold))
                .fixedSize()
                .foregroundColor(Color(hex: "292929"))
                .padding(.leading, 15)
                .padding(.trailing, 15)
                .padding(.top, 9)
                .padding(.bottom, 9)
        }
        .background(didTap ? Color(hex: "F6D555") : Color(hex: "FDF4D1"))
        .cornerRadius(10)
    }
}
