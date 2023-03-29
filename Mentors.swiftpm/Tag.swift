//
//  Tag.swift
//  Mentors
//
//  Created by xnoag on 2023/03/29.
//

import SwiftUI

struct Tag: View {
    
    var keywordText: String = ""
    var keywordBgColor: String = ""
    
    var body: some View {
            Text("# \(keywordText)")
                .font(.sandoll(size: 18, weight: .semibold))
                .fixedSize()
                .foregroundColor(Color(hex: "292929"))
                .padding(15)
                .background(Color(hex: "\(keywordBgColor)"))
                .cornerRadius(10)
    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag()
    }
}
