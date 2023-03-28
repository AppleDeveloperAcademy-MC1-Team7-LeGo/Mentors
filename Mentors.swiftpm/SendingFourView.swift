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
            .font(.custom("Apple SD Gothic Neo", size: 24))
            .fontWeight(.bold)
            .foregroundColor(Color("CustomBlack"))
            .multilineTextAlignment(.leading)
            .padding(.bottom, 10)

            // VStack-Text
            Text("최대 10개의 파일")
                .font(.custom("Apple SD Gothic Neo", size: 16))
                .fontWeight(.regular)
                .foregroundColor(Color("CustomBlack"))
                .padding(.bottom, 24)
            
            // VStack-HStack
            HStack {
                
                // VStack-HStack-Button
                Button(action: {}) {
                    VStack {
                        Image(systemName: "square.and.arrow.up.fill")
                            .foregroundColor(Color("CustomJjinYellow"))
                            .padding(.bottom, 7)
                        Text("파일 또는 사진 첨부")
                            .font(.custom("Apple SD Gothic Neo", size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color("CustomBlack"))
                            .fixedSize()
                    }
                }
                .fixedSize()
                .frame(width: 140, height: 94)
                .background(Color("CustomYellow"))
                .cornerRadius(10)
                
                // VStack-HStack-Button
                Button(action: {}) {
                    VStack {
                        Image(systemName: "CustomGrey")
                            .foregroundColor(Color("CustomJjinYellow"))
                            .padding(.bottom, 7)
                        Text("첨부하지 않음")
                            .font(.custom("Apple SD Gothic Neo", size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color("CustomBlack"))
                            .fixedSize()
                    }
                }
                .fixedSize()
                .frame(width: 140, height: 94)
                .background(Color("CustomJjinGrey"))
                .cornerRadius(10)
                
                
                
                // 간격 부여
                Spacer()
                
                // 우 Image
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 140, height: 94)
                        .foregroundColor(Color(red: 0.9568627450980393, green: 0.9568627450980393, blue: 0.9411764705882353))
                        
                    
                    VStack {
                        Image(systemName: "x.square.fill")
                            .foregroundColor(Color(red: 0.8980392156862745, green: 0.8862745098039215, blue: 0.8431372549019608))
                            .padding(.bottom, 7)
                        Text("첨부하지 않음")
                            .font(.custom("Apple SD Gothic Neo", size: 14))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    }
                }
            }
            .padding(.bottom, 24)
            
            // Image, Text 3개 VStack
            VStack {
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color(red: 0.9921568627450981, green: 0.9568627450980393, blue: 0.8196078431372549))
                        Image(systemName: "paperclip")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("파일명")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                }
                .padding(.bottom, 8)
                
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color(red: 0.9921568627450981, green: 0.9568627450980393, blue: 0.8196078431372549))
                        Image(systemName: "paperclip")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("파일명")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                }
                .padding(.bottom, 8)
                
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 18, height: 18)
                            .foregroundColor(Color(red: 0.9921568627450981, green: 0.9568627450980393, blue: 0.8196078431372549))
                        Image(systemName: "paperclip")
                            .resizable()
                            .frame(width: 12, height: 12)
                    }
                    Text("파일명")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                }
            }
            .padding(.bottom, 313)
        
            // Image
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 338, height: 48).foregroundColor(Color(red: 0.9647058823529412, green: 0.8352941176470589, blue: 0.3333333333333333))
                Text("다음")
                    .font(.custom("Apple SD Gothic Neo", size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
            }
                
        }
        .padding()
    }
}

struct SendingFourView_Previews: PreviewProvider {
    static var previews: some View {
        SendingFourView()
    }
}
