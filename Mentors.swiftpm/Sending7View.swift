//
//  Sending7View.swift
//  Mentors
//
//  Created by 제나 on 2023/03/29.
//

import SwiftUI
import PopupView

struct Sending7View: View {
    
    @State private var isFirstButtonSelected: Bool = false
    @State private var isSecondButtonSelected: Bool = false
    @State private var isPopupShowing: Bool = false
    @State private var goToNextView: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("어떻게 멘토링할까요?")
                .padding(.top, 40)
                .font(.sandoll(size: 24, weight: .bold))
                .foregroundColor(Color(hex: "292929"))
            
            Button {
                isFirstButtonSelected = true
                isSecondButtonSelected = false
                isPopupShowing = true
            } label: {
                Text("제가 멘토를 직접 선택할게요!")
                    .foregroundColor(Color(hex: isFirstButtonSelected ? "292929" : "F9F9F9"))
                    .padding(.vertical, 13)
                    .frame(width: UIScreen.main.bounds.width - 52)
//                    .padding(.horizontal, 26)
                    .background(Color(hex: isFirstButtonSelected ? "F6D555" : "E5E2D7"))
                    .cornerRadius(10)
                    .font(.sandoll(size: 18, weight: .semibold))
                    .padding(.top, 47)
                    .padding(.bottom, 18)
            }
            
            NavigationLink(destination: SendingEightView(), isActive: $goToNextView) { }
            
            Button {
                isFirstButtonSelected = false
                isSecondButtonSelected = true
            } label: {
                Text("멘토님들의 선택을 믿겠습니다.")
                    .foregroundColor(Color(hex: isSecondButtonSelected ? "292929" : "F9F9F9"))
                    .padding(.vertical, 13)
                    .frame(width: UIScreen.main.bounds.width - 52)
//                    .padding(.horizontal, 26)
                    .background(Color(hex: isSecondButtonSelected ? "F6D555" : "E5E2D7"))
                    .cornerRadius(10)
                    .font(.sandoll(size: 18, weight: .semibold))
            }
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color(hex: "F7F5EF"))
        .popup(isPresented: $isPopupShowing) {
            VStack(alignment: .center) {
                Text("정말 이렇게 멘토링을 신청할까요?")
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
                        goToNextView = true
                    } label: {
                        Text("네, 신청할게요")
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
                        Text("더 수정할래요")
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
