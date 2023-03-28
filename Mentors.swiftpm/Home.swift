//
//  home1.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/27.
//

import SwiftUI

struct Home: View {
    @State private var isNavigate: Bool = false
    
    var body: some View {
        NavigationView {
            NavigationLink(isActive: $isNavigate) {
                Sending1()
            } label: {
                Button {
                    isNavigate = true
                } label: {
                    Text("다음 화면으로")
                        .frame(width: 200, height: 100)
                        .cornerRadius(8)
                        .border(Color.blue, width: 1)
                }
            }
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
