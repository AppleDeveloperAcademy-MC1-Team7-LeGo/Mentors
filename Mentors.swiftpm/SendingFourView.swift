//
//  SendingFourView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/27.
//

import SwiftUI

struct SendingFourView: View {
    var body: some View {
        
        // 좌로 정렬 VStack
        VStack(alignment: .leading) {
            
            // VStack-Text
            Text("멘토가 보면 좋을 파일이 있다면,\rPDF 또는 사진으로 올려주세요")
                .font(.sandoll(size: 24, weight: .bold))
                .foregroundColor(Color(hex: "292929"))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 10)
            
            // VStack-Text
            Text("최대 10개의 파일")
                .font(.sandoll(size: 16, weight: .regular))
                .foregroundColor(Color(hex: "292929"))
                .padding(.bottom, 24)
            
            // VStack-HStack
            HStack {
                
                // VStack-HStack-Button
                Button(action: {}) {
                    VStack {
                        Image(systemName: "square.and.arrow.up.fill")
                            .foregroundColor(Color(hex: "F6D555"))
                            .padding(.bottom, 7)
                        Text("파일 또는 사진 첨부")
                            .font(.sandoll(size: 14, weight: .regular))
                            .foregroundColor(Color(hex: "292929"))
                            .fixedSize()
                    }
                }
                .fixedSize()
                .frame(width: 140, height: 94)
                .background(Color(hex: "fdf4d1"))
                .cornerRadius(10)
                
                // VStack-HStack-Spacer
                Spacer()
                
                // VStack-HStack-Button
                Button(action: {}) {
                    VStack {
                        Image(systemName: "x.square.fill")
                            .foregroundColor(Color(hex: "E5E2D7"))
                            .padding(.bottom, 7)
                        Text("첨부하지 않음")
                            .font(.sandoll(size: 14, weight: .regular))
                            .foregroundColor(Color(hex: "292929"))
                            .fixedSize()
                    }
                }
                .fixedSize()
                .frame(width: 140, height: 94)
                .background(Color(hex: "F4F4F0"))
                .cornerRadius(10)
                
            }
            .padding(.bottom, 24)
            
            // VStack-HStack
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color(hex: "FDF4D1"))
                    Image(systemName: "paperclip")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                Text("파일명")
                    .font(.sandoll(size: 12, weight: .regular))
                    .foregroundColor(Color(hex: "292929"))
            }
            .padding(.bottom, 8)
            
            // VStack-HStack
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color(hex: "FDF4D1"))
                    Image(systemName: "paperclip")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                Text("파일명")
                    .font(.sandoll(size: 12, weight: .regular))
                    .foregroundColor(Color(hex: "292929"))
            }
            .padding(.bottom, 8)
            
            // VStack-HStack
            HStack {
                ZStack {
                    Circle()
                        .frame(width: 18, height: 18)
                        .foregroundColor(Color(hex: "FDF4D1"))
                    Image(systemName: "paperclip")
                        .resizable()
                        .frame(width: 12, height: 12)
                }
                Text("파일명")
                    .font(.sandoll(size: 12, weight: .regular))
                    .foregroundColor(Color(hex: "292929"))
            }
            .padding(.bottom, 313)
        
            // VStack-Button
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

struct SendingFourView_Previews: PreviewProvider {
    static var previews: some View {
        SendingFourView()
    }
}



 // 1. Button 비슷한 틀을 한 번에 묶을 수 있는지
 // 2. Button Click Animation 효과시 색상 변경
