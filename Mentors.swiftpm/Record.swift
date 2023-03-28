//
//  Record.swift
//  Mentors
//
//  Created by JAESEOK LEE on 2023/03/27.
//

import SwiftUI

struct Record: View {
    
    @State private var mentoringDescriptionPlaceHolder: String = "멘토링 내용을 기록하세요."
    
    func customButton(buttonName: String, background_hex: String, foreground_hex: String) -> AnyView {
        return AnyView(Button(buttonName) { }
            .frame(maxWidth: 160, maxHeight: 48)
            .background(Color(hex: background_hex))
            .foregroundColor(Color(hex: foreground_hex))
            .font(.system(size: 18, weight: .semibold))
            .cornerRadius(10)
        )
    }
    
    var body: some View {
        
        VStack {
            
            Button { } label: { Image(systemName: "chevron.backward") }
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
            
            TextEditor(text: $mentoringDescriptionPlaceHolder)
                .font(.sandoll(size: 14, weight: .medium))
                .foregroundColor(Color(hex: "bfbbab"))
                .cornerRadius(10)
            // Problem #1. 양 옆이 좁아보임. horizontal padding 주면 조금 잘림.
            // Problem #2. 배경 색이 바뀌지 않음.
            // Problem #3. 첫 줄 맨 위랑 맨 왼쪽 boundary랑 띄워주어야 함.
            // Problem #4. 키보드에 의해 text 입력 되었을 때 placeholder 그대로 있음.
            
            HStack {
                
                VStack { customButton(buttonName: "임시 저장", background_hex: "f6d555", foreground_hex: "292929") }.frame(maxWidth: 179, maxHeight: .infinity)
                
                VStack { customButton(buttonName: "멘토링 완료", background_hex: "e5e2d7", foreground_hex: "292929") }.frame(maxWidth: 179, maxHeight: .infinity)
                
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
