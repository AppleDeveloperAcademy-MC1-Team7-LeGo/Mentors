//
//  home1.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/27.
//

import SwiftUI

struct Home: View {
    @State private var isNavigateToRecord: Bool = false
    @State private var isNavigateToSending: Bool = false
    @State private var isNavigateToSummary: Bool = false
    @Binding var isShowRecordButton: Bool
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("러너 님,\n오늘도 챌린지 힘내세요☺️")
                    .font(Font.custom("Apple SD Gothic Neo", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    .padding(.top, 44)
                
                //진행 중인 멘토링 기록하기
                // TODO: 멘토링 시작 이후에 활성화되도록 만들어야해요
                if isShowRecordButton {
                    NavigationLink(isActive: $isNavigateToRecord) {
                        Record()
                    } label: {
                            Text("진행 중인 멘토링 기록하기")
                                .fontWeight(.bold)
                                .font(Font.custom("Apple SD Gothic Neo", size: 20))
                                .frame(maxWidth: 400, minHeight: 48)
                                .background(Color(hex: "E8585E"))
                                .foregroundColor(Color.init(hex: "F9F9F9"))
                                .cornerRadius(10)
                                .padding(.top, 40)
                    }
                }
                
                //내비게이션
                NavigationLink(isActive: $isNavigateToSending) {
                    Sending1()
                } label: {
                    HomeMentoringButton(title: "내 멘토링 사연 보내기", isSelected: true, action: {
                        isNavigateToSending = true
                    })
                    .frame(width: UIScreen.main.bounds.width - 52, height: 100)
                    .cornerRadius(10)
                    .padding(.top, 68)
                }
                
                NavigationLink(isActive: $isNavigateToSummary) {
                    Summary()
                } label: {
                    HomeMentoringButton(title: "내 멘토링 기록 모아보기", isSelected: true, action: {
                        isNavigateToSummary = true
                    })
                    .frame(width: UIScreen.main.bounds.width - 52, height: 100)
                    .cornerRadius(10)
                    .padding(.top, 30)
                }
                Spacer()
            }
            .padding(.horizontal, 26)
        }
        .navigationBarBackButtonHidden(true)
    }
}
