//
//  Sending3.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct Sending3: View {
    
    @State private var text = ""
    @State private var isNextButtonEnabled = false
    
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
            MentoringTextField()
                .padding(.top, 16)
            //공백 포함 최소 50자
                .onChange(of: text) { newValue in
                    isNextButtonEnabled = newValue.count >= 50
                    
                    Spacer()
                    
                    Group {
                        Nextbutton(title: "다음", isAbled: true, action: {print("next")})
                            .padding(.bottom, 21)
                    }
                    .disabled(!isNextButtonEnabled)
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: btnBack)
        }
        .padding(.horizontal, 26)
        .background(Color.init(hex: "F9F9F9"))
    }
    
    struct Sending3_Previews: PreviewProvider {
        static var previews: some View {
            Sending3()
        }
    }
}