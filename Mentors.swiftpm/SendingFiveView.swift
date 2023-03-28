//
//  SendingFiveView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingFiveView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            // Text
            Text("이 사연의 태그를 달아주세요")
                .font(.custom("Apple SD Gothic Neo", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .multilineTextAlignment(.leading)
                .padding(.bottom, 7)

            // Text
            Text("멘토들이 이해하기 쉽도록 5개 이하루 적어주는 센스!")
                .font(.custom("Apple SD Gothic Neo", size: 14))
                .fontWeight(.regular)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.bottom, 40)
            
            // KeyWords
            VStack(alignment: .leading) {
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
                .padding(.bottom, 4)
                
                HStack {
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                    SendingFiveModels_KeyWordView().padding(.trailing, 3)
                }
            }
            .padding(.bottom, 40)
            
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

struct SendingFiveView_Previews: PreviewProvider {
    static var previews: some View {
        SendingFiveView()
    }
}
