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
            Text("글의 제목을 적어주세요")
                .font(.system(size: 24, weight: .bold))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.top, 40)
//            이거 아래 MentorsTextField에 멘트를 넣어야 하는데 어떻게 넣어야 하나요..?
//            MentorsTextField(text: "멘토들이 알아보기 쉽게 적어주는 센스!")
                .padding(.top, 20)
            
            Spacer()
            
//            텍스트필드에 썼을 때 '다음'이 활성화되도록 어떻게 하죠?
//            if MentoringTextField() != .none {
                Nextbutton(title: "다음", isAbled: false, action: {print("next")})
                    .padding(.bottom, 418)
//            }
        }
        .padding(.horizontal, 26)
        
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
        .background(Color.init(hex: "F9F9F9"))
    }
}

struct Sending2_Previews: PreviewProvider {
    static var previews: some View {
        Sending2()
    }
}
