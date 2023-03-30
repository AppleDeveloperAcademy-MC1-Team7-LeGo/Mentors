//
//  Poster.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/30.
//

import SwiftUI

struct Poster: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: LogoView()){
                Image("poster1")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            }
            
        }
    }
}

struct Poster_Previews: PreviewProvider {
    static var previews: some View {
        Poster()
    }
}
