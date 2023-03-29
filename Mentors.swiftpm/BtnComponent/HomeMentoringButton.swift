//
//  HomeMentoringButton.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/29.
//

import SwiftUI

struct HomeMentoringButton: View {
    
    var title: String
    var isSelected: Bool
    var action: () -> Void
    
    init(
        title: String,
        isSelected: Bool,
        action: @escaping () -> Void
    ) {
        self.title = title
        self.isSelected = isSelected
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                Text(title)
                    .font(Font.custom("Apple SD Gothic Neo", size: 24))
                    .fontWeight(.bold)
                Spacer()
            }
            .frame(height: 156)
            .background(isSelected ? Color.init(hex: "FDF4D1") : Color.init(hex: "F6D555"))
            .foregroundColor(isSelected ? Color.init(hex: "292929") : Color.init(hex: "292929"))
            .cornerRadius(10)
            .overlay{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(isSelected ? Color.init(hex: "F6D555") : Color.init(hex: "FDF4D1"), lineWidth: 1.2)
            }
        }
    }
}

struct HomeMentoringButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeMentoringButton(title: "", isSelected: false) {
            print("")
        }
    }
}
