//
//  Summary.swift
//  Mentors
//
//  Created by JAESEOK LEE on 2023/03/29.
//

import SwiftUI

struct Summary: View {
    
    @State private var feedback: String?
    @State private var feedbackPlaceHolder: String = "멘토링 후기를 입력하세요."
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
        
        VStack(spacing: 6) {
            
            // 페이지 제목 섹션
            VStack {
                
                Text("내 멘토링 기록 모아보기")
                    .font(.sandoll(size: 24, weight: .bold))
                    .foregroundColor(Color(hex: "292929"))
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: 80,
                        alignment: .leading
                    )
                
            }
            .padding(.bottom, 26)
            .padding(.horizontal, 16)
            .padding(.top, 20)
            
            // 멘토 프로필 섹션
            HStack {
                Image(uiImage: #imageLiteral(resourceName: "Leeo"))
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .padding(.trailing, 20)
                
                Text("리이오")
                    .font(.sandoll(size: 16, weight: .bold))
                Text("Leeo")
                    .font(.sandoll(size: 16, weight: .regular))
                
                Spacer()
                
                Text("Tech")
                    .foregroundColor(Color(hex: "292929"))
                    .font(.sandoll(size: 12, weight: .bold))
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.trailing)
                    .padding()
                    .frame(maxWidth: 60)
                    .background(RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous
                    )
                        .foregroundColor(Color(hex: "cee1f3"))
                    )
            }
            .padding(.bottom, 20)
            .frame(maxWidth: 338)
            
            // 신청 내역, 멘토의 기록, 팀의 기록 섹션
            VStack {
                
                HStack {
                    Text("신청 내역")
                        .padding(.leading, 12)
                        .font(.sandoll(size: 18, weight: .semibold))
                    Spacer()
                    Button { } label: { Image(systemName: "chevron.right") }
                        .font(.sandoll(size: 18, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            minHeight: 48,
                            alignment: .trailing
                        )
                        .padding(.trailing, 12)
                }
                .frame(maxWidth: 338, maxHeight: 48)
                .background(Color(hex: "f7f5ef"))
                .cornerRadius(10)
                .padding(.bottom, 16)
                
                HStack {
                    Text("멘토의 기록")
                        .padding(.leading, 12)
                        .font(.sandoll(size: 18, weight: .semibold))
                    Spacer()
                    Button { } label: { Image(systemName: "chevron.right") }
                        .font(.sandoll(size: 18, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            minHeight: 48,
                            alignment: .trailing
                        )
                        .padding(.trailing, 12)
                }
                .frame(maxWidth: 338, maxHeight: 48)
                .background(Color(hex: "f7f5ef"))
                .cornerRadius(10)
                .padding(.bottom, 16)
                
                HStack {
                    Text("팀의 기록")
                        .padding(.leading, 12)
                        .font(.sandoll(size: 18, weight: .semibold))
                    Spacer()
                    Button { } label: { Image(systemName: "chevron.right") }
                        .font(.sandoll(size: 18, weight: .regular))
                        .foregroundColor(Color(hex: "292929"))
                        .frame(
                            maxWidth: .infinity,
                            minHeight: 48,
                            alignment: .trailing
                        )
                        .padding(.trailing, 12)
                }
                .frame(maxWidth: 338, maxHeight: 48)
                .background(Color(hex: "f7f5ef"))
                .cornerRadius(10)
                .padding(.bottom, 30)
                
            }
            
            // 후기 섹션
            VStack(alignment: .leading, spacing: 0) {
                
                Text("후기")
                    .font(.sandoll(size: 18, weight: .semibold))
                    .padding(.bottom, 10)
                
                ZStack(alignment: .topLeading) {
                    
                    TextEditor(text: Binding($feedback, replacingNilWith: ""))
                        .hideBackground()
                        .padding(10)
                        .background(Color(hex: "f7f5ef"))
                        .cornerRadius(10)
                        .font(.sandoll(size: 14, weight: .medium))
                        .foregroundColor(Color(hex: "292929"))
                        .multilineTextAlignment(.leading)
                        .frame(height: 200)
                    
                    Text(feedback ?? feedbackPlaceHolder)
                        .offset(x: 16, y: 19)
                        .font(.sandoll(size: 14, weight: .medium))
                        .foregroundColor(Color(hex: "bfbbab"))
                        .opacity(feedback == nil ? 1 : 0)
                    
                }
                .font(.body)
                .padding(.bottom, 16)
                
            }
            .frame(maxWidth: 338)
        }
        .background(Color(hex: "f9f9f9"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
    }
}
