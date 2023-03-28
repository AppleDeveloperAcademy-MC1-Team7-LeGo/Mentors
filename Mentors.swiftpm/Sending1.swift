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

    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("누가 보내는 사연인가요?")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
            
            HStack(spacing: 18) {
                SelectableButton(
                    title: "팀", isSelected: selectButton == .team) {
                        selectButton = .team
                    }
                    .frame(width: UIScreen.main.bounds.width / 2 - 26 - 9)
                
                SelectableButton(
                    title: "개인", isSelected: selectButton == .personal) {
                        selectButton = .personal
                    }
                    .frame(width: UIScreen.main.bounds.width / 2 - 26 - 9)
                        
                        
                        //                    Button {
                        //
                        //                    } label: {
                        //                        Text("팀")
                        //                            .font(.system(size: 18, weight: .semibold))
                        //                            .frame(width: UIScreen.main.bounds.width / 2 - 26, height: 48)
                        //                            .background(Color(hex: "E5E2D7"))
                        //                            .foregroundColor(Color(hex: "F9F9F9"))
                        //                            .cornerRadius(10)
                        //                    }
                        //
                        //                    Button {
                        //
                        //                    } label: {
                        //                        Text("개인")
                        //                            .font(.system(size: 18, weight: .semibold))
                        //                            .frame(width: UIScreen.main.bounds.width / 2 - 26, height: 48)
                        //                            .background(Color(hex: "E5E2D7"))
                        //                            .foregroundColor(Color(hex: "F9F9F9"))
                        //                            .cornerRadius(10)
                        //                    }
                        
                    }
                Spacer()
            }
        }
        
        
        struct sending1_Previews: PreviewProvider {
            static var previews: some View {
                Sending1()
            }
        }
    }
