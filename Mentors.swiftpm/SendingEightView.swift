//
//  SendingEightView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingEightView: View {
    var body: some View {
        
        // 좌로 정렬 VStack
        ScrollView {
            
            // VStack-Text
            Text("멘토를 선택해주세요")
                .font(.custom("Apple SD Gothic Neo", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color(hex: "292929"))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 61)
            
            // VStack-Group-하나의 Stack에 최대 10개 뷰만 가능해서 Group으로 묶음.
            Group {
                // VStack-Button(1)
                Button(action: {}) {
                    HStack {
                        Image("곰민")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("곰민")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Gommin")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Domain")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "F9DEDF"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(2)
                Button(action: {}) {
                    HStack {
                        Image("데이지")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("데이지")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Daisy")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Domain")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "F9DEDF"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(3)
                Button(action: {}) {
                    HStack {
                        Image("도라")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("도라")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Dora")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Design")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "DAEEC6"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(4)
                Button(action: {}) {
                    HStack {
                        Image("리이오")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("리이오")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Leeo")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Tech")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "CEE1F3"))
                            .frame(width: 60, height: 38)
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(5)
                Button(action: {}) {
                    HStack {
                        Image("린다")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("린다")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Rinda")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Design")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "DAEEC6"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(6)
                Button(action: {}) {
                    HStack {
                        Image("링고")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("링고")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Lingo")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Tech")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "CEE1F3"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(7)
                Button(action: {}) {
                    HStack {
                        Image("사야")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("사야")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Saya")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Design")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "DAEEC6"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(8)
                Button(action: {}) {
                    HStack {
                        Image("섭")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("섭")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Sup")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Design")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "DAEEC6"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(9)
                Button(action: {}) {
                    HStack {
                        Image("아이작")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("아이작")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Issac")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Tech")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "CEE1F3"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                
                // VStack-Button(10)
                Button(action: {}) {
                    HStack {
                        Image("영")
                            .resizable()
                            .cornerRadius(50)
                            .frame(width: 60, height: 60)
                            .padding(.trailing, 18)
                        Text("영")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.bold)
                            .foregroundColor(Color(hex: "292929"))
                        Text("Young")
                            .font(.custom("Apple SD Gothic Neo", size: 16))
                            .fontWeight(.regular)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(.trailing, 72)
                            .fixedSize()
                        Spacer()
                        Text("Tech")
                            .font(.custom("Apple SD Gothic Neo", size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hex: "292929"))
                            .padding(14)
                            .background(Color(hex: "CEE1F3"))
                            .cornerRadius(10)
                            .fixedSize()
                    }
                }
                .padding(.bottom, 40)
                
            }
            
            //VStack-Button
            Button(action:{}) {
                Text("다음")
                    .font(.custom("Apple SD Gothic Neo", size: 18))
                    .fontWeight(.semibold)
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

struct SendingEightView_Previews: PreviewProvider {
    static var previews: some View {
        SendingEightView()
    }
}
