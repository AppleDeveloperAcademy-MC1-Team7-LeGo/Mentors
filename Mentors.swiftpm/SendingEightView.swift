//
//  SendingEightView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingEightView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // Text
            Text("멘토를 선택해주세요")
                .font(.custom("Apple SD Gothic Neo", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 61)
            
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("곰민")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Gommin")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                        .fixedSize()
                    Spacer()
                    Text("Domain")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomRed"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                
                
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("데이지")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Daisy")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                        .fixedSize()
                    Spacer()
                    Text("Domain")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomRed"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("링고")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Lingo")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                        .fixedSize()
                    Spacer()
                    Text("Tech")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomBlue"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("사야")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Saya")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                    Spacer()
                    Text("Design")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomGreen"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("아이작")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Issac")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                        .fixedSize()
                    Spacer()
                    Text("Tech")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomBlue"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                
                HStack {
                    Circle()
                        .frame(width: 60, height: 60)
                        .padding(.trailing, 18)
                    Text("영")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    Text("Young")
                        .font(.custom("Apple SD Gothic Neo", size: 16))
                        .fontWeight(.regular)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(.trailing, 72)
                    Spacer()
                    Text("Tech")
                        .font(.custom("Apple SD Gothic Neo", size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                        .padding(12)
                        .background(Color("CustomBlue"))
                        .cornerRadius(15)
                        .fixedSize()
                }
                .padding(.bottom, 40)
                

            }
        .padding(20)
        }
}

struct SendingEightView_Previews: PreviewProvider {
    static var previews: some View {
        SendingEightView()
    }
}
