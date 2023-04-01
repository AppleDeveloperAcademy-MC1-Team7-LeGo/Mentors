//
//  SwiftUIView.swift
//  
//
//  Created by 제나 on 2023/04/01.
//

import SwiftUI

// 1. Button 내부에 들어가는 View를 따로 정의하는 방법
//struct BackButton: View {
//    var body: some View {
//        HStack {
//            Image(systemName: "chevron.backward")
//                .aspectRatio(contentMode: .fit)
//                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
//        }
//    }
//}


// 2. 버튼 자체를 커스텀하는 방법
struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button {
            self.presentationMode.wrappedValue.dismiss()
        } label: {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
            }
        }

    }
}
