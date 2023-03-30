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
    @State private var title: String = "[오전 팀7] 팀 회고를 어떻게 해야하는지 모르겠어요"
    @State private var mentoringContent: String = "안녕하세요 MC1 오전 세션 Group3 Team7 LeGo 입니다. 저희는 현재 ‘사람들이 어떤 사람이고 뭐하다 왔는지 알게하자‘라는 Our Challenge를 설정한 채로 해당 Our Challenge에 연관된 Guiding Questions를 Miro 보드에 붙이는 것 까지 완성한 상태입니다.\n\n그런데 팀원 모두 공통적으로 다른 조들에 비해 너무 속도가 빠른 것 같다는 의견이 있고, 저희가 설정한 Our Challenge를 가지고 3주동안 챌린지를 진행하는 것이 맞을까에 대해 의문을 가지고 있습니다.\n\n이에 멘토링을 요청합니다. 저희의 현재 상태를 점검해 주시면 좋을 것 같고, 팀원 모두 확신을 가질 만한 Our Challenge를 어떻게 설정할 지에 대해 도움을 주시면 감사하겠습니다."
    
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
                .background(RoundedRectangle(
                    cornerRadius: 10,
                    style: .continuous
                )
                    .foregroundColor(Color(hex: "f7f5ef"))
                )
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
    }
}
