//
//  Sending2.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct Sending2: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var text: String = ""
    @State private var navigationIsActive: Bool = false
    
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
        NavigationView {
            VStack(alignment: .leading) {
                Text("글의 제목을 적어주세요")
                    .font(.system(size: 24, weight: .bold))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    .padding(.top, 40)
                MentorsTextField(text: $text, placeholder: "멘토들이 알아보기 쉽게 적어주는 센스!")
                    .onTapGesture {
                        if text.isEmpty {
                            text = "팀 회고를 어떻게 해야하는지 모르겠어요."
                        }
                    }
                    .padding(.top, 20)
                
                Spacer()
                
                Nextbutton(title: "다음", isAbled: text != "") {
                    navigationIsActive = true
                }
                .padding(.bottom, 418)
            }
            .padding(.horizontal, 26)
        }
        
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
        .background(Color.init(hex: "F9F9F9"))
        .background(EmptyNavigationLink(isActive: $navigationIsActive, {
            Sending3()
        }))
    }
}
