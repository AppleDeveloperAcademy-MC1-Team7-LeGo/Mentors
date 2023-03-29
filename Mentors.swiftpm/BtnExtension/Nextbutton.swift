//
//  Nextbutton.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/28.
//

import SwiftUI

struct Nextbutton: View {
    var title: String
    var isAbled: Bool
    var action: () -> Void
    
    init(
        title: String,
        isAbled: Bool,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.isAbled = isAbled
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .font(Font.custom("Apple SD Gothic Neo", size: 18))
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .frame(height: 48)
            .background(isAbled ? Color.init(hex: "F6D555") : Color.init(hex: "E5E2D7"))
            .foregroundColor(isAbled ? Color.init(hex: "292929") : Color.init(hex: "F9F9F9"))
            .cornerRadius(10)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isAbled ? Color.init(hex: "F6D555") : Color.init(hex: "E5E2D7"), lineWidth: 1.2)
            }
        }
        .disabled(!isAbled)
    }
}

struct Nextbutton_Previews: PreviewProvider {
    static var previews: some View {
        Nextbutton(title: "다음", isAbled: false) {
            print("")
        }
    }
}
