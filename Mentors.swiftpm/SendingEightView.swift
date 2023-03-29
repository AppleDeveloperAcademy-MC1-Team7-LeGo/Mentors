//
//  SendingEightView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingEightView: View {
    var body: some View {
        
        ScrollView {
            
            // 좌로 정렬 VStack
            VStack(alignment: .leading) {
                
                // VStack-Text
                Text("멘토를 선택해주세요")
                    .font(.custom("Apple SD Gothic Neo", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "292929"))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 50)
                
                // VStack-Group-하나의 Stack에 최대 10개 뷰만 가능해서 Group으로 묶음.
                Group {
                    // VStack-Button(1)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "곰민", mentorEnglishName: "Gommin", mentorStrength: "Domain", strengthColorCode: "F9DEDF")
                        }
                    }
                    
                    // VStack-Button(2)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "데이지", mentorEnglishName: "Daisy", mentorStrength: "Domain", strengthColorCode: "F9DEDF")
                        }
                    }
                    
                    // VStack-Button(3)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "도라", mentorEnglishName: "Dora", mentorStrength: "Design", strengthColorCode: "DAEEC6")
                        }
                    }
                    
                    // VStack-Button(4)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "리이오", mentorEnglishName: "Leeo", mentorStrength: "Tech", strengthColorCode: "CEE1F3")
                        }
                    }
                    
                    // VStack-Button(5)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "린다", mentorEnglishName: "Rinda", mentorStrength: "Design", strengthColorCode: "DAEEC6")
                        }
                    }
                    
                    // VStack-Button(6)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "링고", mentorEnglishName: "Lingo", mentorStrength: "Tech", strengthColorCode: "CEE1F3")
                        }
                    }
                    
                    // VStack-Button(7)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "사야", mentorEnglishName: "Saya", mentorStrength: "Design", strengthColorCode: "DAEEC6")
                        }
                    }
                    
                    // VStack-Button(8)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "섭", mentorEnglishName: "Sup", mentorStrength: "Design", strengthColorCode: "DAEEC6")
                        }
                    }
                    
                    // VStack-Button(9)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "아이작", mentorEnglishName: "Issac", mentorStrength: "Tech", strengthColorCode: "CEE1F3")
                        }
                    }
                    
                    // VStack-Button(10)
                    Button(action: {}) {
                        HStack {
                            MentorTag(mentorKoreanName: "영", mentorEnglishName: "Young", mentorStrength: "Tech", strengthColorCode: "CEE1F3")
                        }
                    }
                    .padding(.bottom, 40)
                    
                }
                
                //VStack-Button
                Button(action:{}) {
                    Text("다음")
                        .font(.sandoll(size: 18, weight: .semibold))
                        .foregroundColor(Color(hex: "292929"))
                }
                .fixedSize()
                .frame(width: 338, height: 48)
                .background(Color(hex: "F6D555"))
                .cornerRadius(10)
                
            }
            .padding()
        }
    }
}

struct SendingEightView_Previews: PreviewProvider {
    static var previews: some View {
        SendingEightView()
    }
}
