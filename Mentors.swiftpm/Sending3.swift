//
//  Sending3.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct Sending3: View {
    
    @State private var text = ""
    @State private var navigationIsActive: Bool = false
    
    
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
        VStack(alignment: .leading) {
            Text("어떤 멘토링이 필요하신가요?")
                .font(.system(size: 24, weight: .bold))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.top, 40)
            
            Text("공백 포함 50자 이상으로 자세하게 적어주세요.")
                .font(.system(size: 14, weight: .bold))
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.top, 4)
            
            MentoringTextField(text: $text)
                .onTapGesture {
                    if text.isEmpty {
                        text = "안녕하세요 Leeo!\nMC1 오전 세션 Group3 Team7 LeGo 입니다.\n\n저희는 어제 발표가 끝남과 동시에 MC1 전반부가 마무리되었기 때문에 전반부에 대한 회고를 진행하려고 합니다.\n그런데 팀 회고가 처음이다 보니 어떻게 시작해야 할지 감이 잘 오지 않습니다.\n\n이에 멘토링을 요청합니다. 팀 회고를 어떻게 시작하고 어떻게 진행해야 하는지에 대해 도움을 주시면 감사하겠습니다."
                    }
                }
                .padding(.top, 16)
                .padding(.bottom, 26)
            
            Spacer()
            
            Nextbutton(title: "다음", isAbled: text.count >= 50) {
                navigationIsActive = true
            }
        }
        .padding(.bottom, 55)
        .padding(.horizontal, 26)
        .background(Color.init(hex: "F9F9F9"))
        .background(EmptyNavigationLink(isActive: $navigationIsActive, {
            SendingFourView()
            // 버튼 최소 50자 이상 나오도록 하는 코드
            //            Nextbutton(title: "다음", isAbled: text.count >= 50) {
            //                navigationIsActive = true
            //            }
            
        }))
        
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}
