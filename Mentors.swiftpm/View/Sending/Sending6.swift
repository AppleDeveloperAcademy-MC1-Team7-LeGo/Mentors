//
//  New+Check.swift
//  Mentors
//
//  Created by JAESEOK LEE on 2023/03/29.
//

import SwiftUI

struct Check: View {
    
    @State private var mentoringDescription: String?
    @State private var mentoringDescriptionPlaceHolder: String = "멘토링 내용을 기록하세요."
    @State private var title: String = "[오전, 팀7] 팀 회고를 어떻게 해야하는지 모르겠어요."
    @State private var mentoringContent: String = "안녕하세요 Leeo!\nMC1 오전 세션 Group3 Team7 LeGo 입니다.\n\n저희는 어제 발표가 끝남과 동시에 MC1 전반부가 마무리되었기 때문에 전반부에 대한 회고를 진행하려고 합니다.\n\n그런데 팀 회고가 처음이다 보니 어떻게 시작해야 할지 감이 잘 오지 않습니다.\n\n이에 멘토링을 요청합니다. 팀 회고를 어떻게 시작하고 어떻게 진행해야 하는지에 대해 도움을 주시면 감사하겠습니다."
    
    func customDoneButton(buttonName: String, background_hex: String, foreground_hex: String) -> AnyView {
        return AnyView(Button(buttonName) { }
            .frame(maxWidth: .infinity, maxHeight: 48)
            .background(Color(hex: background_hex))
            .foregroundColor(Color(hex: foreground_hex))
            .font(.sandoll(size: 18, weight: .semibold))
            .cornerRadius(10)
        )
    }
    
    var body: some View {
        
        VStack {
            Text("작성한 내용이 맞는지 확인해주세요")
                .font(.sandoll(size: 24, weight: .bold))
                .foregroundColor(Color(hex: "292929"))
                .frame(
                    maxWidth: .infinity,
                    maxHeight: 80,
                    alignment: .leading
                )
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Text("제목")
                        .font(.sandoll(size: 16, weight: .semibold))
                    
                    Button { } label: { Image(systemName: "pencil.circle") }
                        .font(.sandoll(size: 16, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: 44,
                            alignment: .leading
                        )
                    
                }
                
                Text(title)
                    .font(.sandoll(size: 14, weight: .semibold))
                    .foregroundColor(Color(hex: "292929"))
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(RoundedRectangle(cornerRadius: 10, style: .continuous).foregroundColor(Color(hex: "f7f5ef")))
                
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 10)
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Text("내용")
                        .font(.sandoll(size: 16, weight: .semibold))
                    
                    Button { } label: { Image(systemName: "pencil.circle") }
                        .font(.sandoll(size: 16, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: 44,
                            alignment: .leading
                        )
                    
                }
                .padding(.bottom, 16)
                
                TextEditor(text: $mentoringContent)
                    .hideBackground()
                    .padding(.horizontal, 10)
                    .padding(.top, 6)
                    .background(Color(hex: "f7f5ef"))
                    .font(.sandoll(size: 14, weight: .medium))
                    .foregroundColor(Color(hex: "292929"))
                    .cornerRadius(10)
                    .frame(height: 195)
                
            }
            .padding(.horizontal, 8)
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Text("첨부파일")
                        .font(.sandoll(size: 16, weight: .semibold))
                    
                    Button { } label: { Image(systemName: "pencil.circle") }
                        .font(.sandoll(size: 16, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: 44,
                            alignment: .leading
                        )
                    
                }
                
                Text(Image(systemName: "x.square.fill"))
                    .foregroundColor(Color(hex: "e5e2d7"))
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .foregroundColor(Color(hex: "f7f5ef"))
                    )
                
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 10)
            
            VStack(spacing: 0) {
                
                HStack {
                    
                    Text("태그")
                        .font(.sandoll(size: 16, weight: .semibold))
                    
                    Button { } label: { Image(systemName: "pencil.circle") }
                        .font(.sandoll(size: 16, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            maxHeight: 44,
                            alignment: .leading
                        )
                    
                }
                .padding(.bottom, 12)
                
                HStack {
                    Text("# 회고")
                        .font(.sandoll(size: 18, weight: .semibold))
                        .fixedSize()
                        .foregroundColor(Color(hex: "292929"))
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .padding(.top, 9)
                        .padding(.bottom, 9)
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    
                    Text("# CBL")
                        .font(.sandoll(size: 18, weight: .semibold))
                        .fixedSize()
                        .foregroundColor(Color(hex: "292929"))
                        .padding(.leading, 15)
                        .padding(.trailing, 15)
                        .padding(.top, 9)
                        .padding(.bottom, 9)
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    
                    Spacer()
                }
            }
            .padding(.horizontal, 8)
            .padding(.bottom, 30)
            
            ZStack {
                NavigationLink(destination: Sending7View()) {
                    Text("작성 완료")
                        .font(.sandoll(size: 18, weight: .semibold))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(width: 350, height: 48)
                        .background(Color(hex: "F6D555"))
                        .cornerRadius(10)
//                    customDoneButton(buttonName: "작성 완료", background_hex: "f6d555", foreground_hex: "292929")
                }
            }
            .frame(
                width: 338,
                height: 48,
                alignment: .center
            )
            
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "f9f9f9"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButton())
    }
}
