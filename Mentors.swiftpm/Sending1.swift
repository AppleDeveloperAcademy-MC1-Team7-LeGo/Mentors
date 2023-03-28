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


//NavigationView {
//    Text("hello")
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                HStack {
//                    Image(systemName: "chevron.backward")
//                }
//            }
//        }
//}

struct Sending1: View {
    @State private var selectButton: SelectedButtonType = .none
    @State private var teamName: String = .init()
    
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
            Text("누가 보내는 사연인가요?")
                .font(Font.custom("Apple SD Gothic Neo", size: 24))
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                .padding(.top, 40)
            
            HStack(spacing: 18) {
                SelectableButton(
                    title: "팀", isSelected: selectButton == .team) {
                        selectButton = .team
                    }
                //                    .frame(width: UIScreen.main.bounds.width / 2 - 26 - 9)
                
                SelectableButton(
                    title: "개인", isSelected: selectButton == .personal) {
                        selectButton = .personal
                    }
                //                    .frame(width: UIScreen.main.bounds.width / 2 - 26 - 9)
            }
            if selectButton == .team {
                MentorsTextField()
                    .padding(.top, 20)
            }
            Spacer()
        }
        .padding(.horizontal, 26)
        
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
        
        .background(Color.init(hex: "F9F9F9"))
        
    }
}
                    
                    
struct sending1_Previews: PreviewProvider {
    static var previews: some View {
        Sending1()
    }
}

