//
//  MentorTag.swift
//  Mentors
//
//  Created by xnoag on 2023/03/29.
//

import SwiftUI

struct MentorTag: View {
    
    var mentorKoreanName: String
    var mentorEnglishName: String
    var mentorStrength: String
    var strengthColorCode: String
    
    var body: some View {
        Image("\(mentorKoreanName)")
            .resizable()
            .cornerRadius(50)
            .frame(width: 60, height: 60)
            .padding(.trailing, 18)
        Text("\(mentorKoreanName)")
            .font(.sandoll(size: 16, weight: .bold))
            .foregroundColor(Color(hex: "292929"))
        Text("\(mentorEnglishName)")
            .font(.sandoll(size: 16, weight: .regular))
            .foregroundColor(Color(hex: "292929"))
            .padding(.trailing, 72)
            .fixedSize()
        Spacer()
        Text("\(mentorStrength)")
            .font(.sandoll(size: 12, weight: .semibold))
            .foregroundColor(Color(hex: "292929"))
            .padding(14)
            .background(Color(hex: "\(strengthColorCode)"))
            .cornerRadius(10)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct MentorTag_Previews: PreviewProvider {
    static var previews: some View {
        MentorTag(mentorKoreanName: "곰민", mentorEnglishName: "Gommin", mentorStrength: "Domain", strengthColorCode: "F9DEDF")
    }
}
