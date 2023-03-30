//
//  SendingFourView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/27.
//

import SwiftUI

struct SendingFourView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var btnBack : some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
            }
        }
    }
    
    var body: some View {
        
        // 좌로 정렬 VStack
        VStack {
          
            // VStack-Text
            HStack {
                Text("멘토가 보면 좋을 파일이 있다면,\rPDF 또는 사진으로 올려주세요")
                    .font(.sandoll(size: 24, weight: .bold))
                    .foregroundColor(Color(hex: "292929"))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 15)
                    .padding(.top, 20)
                Spacer()
            }
                
            
            // VStack-Text
            HStack {
                Text("최대 10개의 파일")
                    .font(.sandoll(size: 16, weight: .regular))
                    .foregroundColor(Color(hex: "292929"))
                    .padding(.bottom, 24)
                Spacer()
            }
            
            // VStack-HStack
            HStack {
                
                // VStack-HStack-Button
                Button(action:  {}) {
                    VStack {
                        Image(systemName: "square.and.arrow.up.fill")
                            .resizable()
                            .frame(width: 20, height: 25)
                            .foregroundColor(Color(hex: "F6D555"))
                            .padding(.bottom, 7)
                        Text("파일 또는 사진 첨부")
                            .font(.sandoll(size: 14, weight: .regular))
                            .foregroundColor(Color(hex: "292929"))
                            .fixedSize()
                    }
                }
                .frame(width: 140, height: 94)
                .background(Color(hex: "fdf4d1"))
                .cornerRadius(10)
                
                // VStack-HStack-Spacer
                Spacer()
                
                // VStack-HStack-Button
                ColorChangeCustomButton()
                
            }
            .padding(.bottom, 24)
            
           
            Spacer()
        
            // VStack-Button
            NavigationLink(destination: SendingFiveView()) {
                Text("다음")
                    .font(.sandoll(size: 18, weight: .semibold))
                    .foregroundColor(Color(hex: "292929"))
                    .frame(width: 350, height: 48)
                    .background(Color(hex: "F6D555"))
                    .cornerRadius(10)
            }
        }
        .padding(.horizontal, 30)
        .background(Color(hex: "f9f9f9"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

 // TODO: 1. Button 비슷한 틀을 한 번에 묶을 수 있는지
 // TODO: 2. Button Click Animation 효과시 색상 변경
