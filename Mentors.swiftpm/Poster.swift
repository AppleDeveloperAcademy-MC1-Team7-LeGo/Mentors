//
//  Poster.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/30.
//

import SwiftUI

struct Poster: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack {
                NavigationLink(destination: LogoView()){
                    Image("poster1")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                }
                
            }
        } else {
            fatalError("iOS 16 이하면 작동이 안 돼요")
        }
    }
}

struct Poster_Previews: PreviewProvider {
    static var previews: some View {
        Poster()
    }
}
