//
//  Record.swift
//  Mentors
//
//  Created by JAESEOK LEE on 2023/03/27.
//

import SwiftUI

struct Record: View {

    @State private var mentoringDescription: String?
    @State private var mentoringDescriptionPlaceHolder: String = "멘토링 내용을 기록하세요."
    
    func customButton(buttonName: String, background_hex: String, foreground_hex: String) -> AnyView {
        return AnyView(Button(buttonName) { }
            .frame(maxWidth: 160, maxHeight: 48)
            .background(Color(hex: background_hex))
            .foregroundColor(Color(hex: foreground_hex))
            .font(.sandoll(size: 18, weight: .semibold))
            .cornerRadius(10)
        )
    }
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

        VStack {           

            Text("진행 중인 멘토링을 기록하세요")
                .font(.sandoll(size: 24, weight: .bold))
                .foregroundColor(Color(hex: "292929"))
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 80,
                    alignment: .leading
                )

            VStack {
                
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: Binding($mentoringDescription, replacingNilWith: ""))
                        .hideBackground()
                        .padding(10)
                        .background(Color(hex: "f7f5ef"))
                        .cornerRadius(10)
                        .font(.sandoll(size: 14, weight: .medium))
                        .foregroundColor(Color(hex: "292929"))
                        .multilineTextAlignment(.leading)
                    
                    Text(mentoringDescription ?? mentoringDescriptionPlaceHolder)
                        .offset(x: 16, y: 19)
                        .font(.sandoll(size: 14, weight: .medium))
                        .foregroundColor(Color(hex: "bfbbab"))
                        .opacity(mentoringDescription == nil ? 1 : 0)
                    
                }
                .font(.body)
                
            }
            .padding(.horizontal, 8)
            
            HStack {
                
                VStack { customButton(buttonName: "임시 저장", background_hex: "f6d555", foreground_hex: "292929") }
                    .frame(maxWidth: 179, maxHeight: .infinity)
                
                VStack { customButton(buttonName: "멘토링 완료", background_hex: "e5e2d7", foreground_hex: "292929") }
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
        .background(Color(hex: "f9f9f9"))
        .navigationBarItems(leading: btnBack)
        .navigationBarBackButtonHidden(true)

    }
}

struct Record_Previews: PreviewProvider {
    static var previews: some View {
        Record()
    }
}

// To Do
// 현재도 문제 없이 작동하지만, 통일성을 위해 < 와 "진행 중인 멘토링을 기록하세요"를 고정시키면 좋을 듯
