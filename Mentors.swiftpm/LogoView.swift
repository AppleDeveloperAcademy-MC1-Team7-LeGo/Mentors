//
//  LogoView.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/30.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Home()){
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
