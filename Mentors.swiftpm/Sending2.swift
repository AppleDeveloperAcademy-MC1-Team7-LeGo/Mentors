//
//  Sending2.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct Sending2: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("글의 제목을 적어주세요")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
        }
        
    }
}

struct Sending2_Previews: PreviewProvider {
    static var previews: some View {
        Sending2()
    }
}
