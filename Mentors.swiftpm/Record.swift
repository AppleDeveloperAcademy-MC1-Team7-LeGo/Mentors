//
//  Record.swift
//  Mentors
//
//  Created by JAESEOK LEE on 2023/03/27.
//

import SwiftUI

struct Record: View {
    
    @State var mentoringContent: String = ""
    
    func customButton(buttonName: String, red: Double, green: Double, blue: Double) -> AnyView {
        return AnyView(Button(buttonName) { }
            .frame(maxWidth: 160, maxHeight: 48)
            .background(Color(red: red, green: green, blue: blue))
            .foregroundColor(Color(red: 0.161, green: 0.161, blue: 0.161))
            .font(.system(size: 18, weight: .semibold))
            .cornerRadius(10)
        )
    }
    
    var body: some View {
        VStack {
            Button {
            } label: {
                Image(systemName: "chevron.backward")
            }
            .font(.system(size: 24))
            .foregroundColor(Color.black)
            .frame(
                maxWidth: .infinity,
                maxHeight: 44,
                alignment: .leading
            )
            Text("진행 중인 멘토링을 기록하세요")
                .font(.system(size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.161, green: 0.161, blue: 0.161))
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 80,
                    alignment: .leading
                )
            TextField("멘토링 내용을 기록하세요.", text: $mentoringContent)
                .padding(12)
                .font(Font.system(size: 14, design: .default))
                .frame(maxWidth: 342, minHeight: 512, alignment: .top)
                .background(Color(red: 0.969, green: 0.961, blue: 0.88))
                .cornerRadius(10)
                .multilineTextAlignment(.leading)
            HStack {
                VStack {
                    customButton(buttonName: "임시 저장", red: 0.965, green: 0.835, blue: 0.333)
                }
                .frame(maxWidth: 179, maxHeight: .infinity)
                VStack {
                    customButton(buttonName: "멘토링 완료", red: 0.898, green: 0.886, blue: 0.843)
                }
                .frame(maxWidth: 179, maxHeight: .infinity)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: 80,
                alignment: .center
            )
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.961, green: 0.961, blue: 0.961))
    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
}
