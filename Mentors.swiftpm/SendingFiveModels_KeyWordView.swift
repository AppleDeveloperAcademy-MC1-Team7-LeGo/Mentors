//
//  SendingFiveModels_KeyWordView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingFiveModels_KeyWordView: View {
    
    var body: some View {
        Text("# \(keyWordArray[0].keyWord)")
            .font(.custom("Apple SD Gothic Neo", size: 18))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
            .padding()
            .background(keyWordArray[0].backgroundColor)
            .cornerRadius(15)
        }
    }


struct SendingFiveModels_KeyWordView_Previews: PreviewProvider {
    static var previews: some View {
        SendingFiveModels_KeyWordView()
    }
}
