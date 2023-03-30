//
//  SendingEightView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingEightView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isPopupShowing: Bool = false
    
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
                    Button(action: {
                        isPopupShowing = true
                    }) {
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
            }
            .padding()
        }
        .popup(isPresented: $isPopupShowing) {
            VStack(alignment: .center) {
                Text("'리이오' 멘토에게 사연을 보낼까요?")
                    .font(.sandoll(size: 20, weight: .semibold))
                    .padding(.top, 55)
                    .foregroundColor(Color(hex: "292929"))
                Text("멘토가 해당 사연을 열람하기 전까지는\n수정이 가능해요.")
                    .font(.sandoll(size: 16, weight: .semibold))
                    .foregroundColor(Color(hex: "292929"))
                    .padding(.top, 18)
                    .multilineTextAlignment(.center)
                
                HStack {
                    Button {
                        isPopupShowing = false
                        // TODO: pop to root view
                    } label: {
                        Text("네, 보낼게요")
                            .padding(.vertical, 15)
                            .padding(.horizontal, 12)
                            .background(Color(hex: "F6D555"))
                            .font(.sandoll(size: 18, weight: .semibold))
                            .foregroundColor(Color(hex: "292929"))
                            .cornerRadius(10)
                    }
                    
                    Button {
                        isPopupShowing = false
                    } label: {
                        Text("다시 고를래요")
                            .padding(.vertical, 15)
                            .padding(.horizontal, 12)
                            .background(Color(hex: "E5E2D7"))
                            .font(.sandoll(size: 18, weight: .semibold))
                            .foregroundColor(Color(hex: "292929"))
                            .cornerRadius(10)
                            .padding(.leading, 15)
                    }
                }
                .padding(.top, 44)
                .padding(.bottom, 20)
            }
            .frame(width: UIScreen.main.bounds.width-64)
            .frame(minHeight: 247)
            .background(Color(hex: "F7F5EF"))
            .cornerRadius(10)
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hex: "F6D555"), lineWidth: 4)
                    .background(Color("F9F9F9"))
            }
        } customize: {
            $0.animation(.spring())
                .closeOnTapOutside(true)
                .backgroundColor(.black.opacity(0.5))
        }
        .navigationBarBackButtonHidden(true)
    }
}
