//
//  sending1.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/27.
//

import SwiftUI

enum SelectedButtonType {
    case team
    case personal
    case none
}

struct Sending1: View {
    @State private var selectButton: SelectedButtonType = .none
    @State private var teamName: String = ""
    
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
        VStack(alignment: .leading, spacing: 0) {
            Text("누가 보내는 사연인가요?")
                .font(Font.custom("Apple SD Gothic Neo", size: 24))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.top, 40)
                .padding(.bottom, 37)
            
            HStack(spacing: 18) {
                SelectableButton(
                    title: "팀", isSelected: selectButton == .team) {
                        withAnimation(.easeIn(duration: 0.2)) {
                            selectButton = .team
                        }
                    }
                
                SelectableButton(
                    title: "개인", isSelected: selectButton == .personal) {
                        withAnimation(.easeIn(duration: 0.2)) {
                            selectButton = .personal
                        }
                    }
            }
            
            if selectButton == .team {
                MentorsTextField(text: teamName, placeholder: "팀 이름을 정확하게 적어주세요")
                    .padding(.top, 20)
                    .padding(.bottom, 80)
            }
            
            // Next Button
            if selectButton != .none {
                NavigationLink(destination: Sending2()) {
                    // TODO: "팀" 버튼 선택시 텍스트필드가 비어있으면 버튼 disabled
                    Nextbutton(title: "다음", isAbled: true) {}
                }
                .padding(.top, selectButton == .personal ? 134 : 0)
            }
            Spacer()
        }
        .padding(.horizontal, 26)
        .background(Color.init(hex: "F9F9F9"))
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct MovingOnNextView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
            Button("Next") {
                navigateToNextView()
            }
        }
    }
    
    private func navigateToNextView() {
        // Code to navigate to next view
    }
}
