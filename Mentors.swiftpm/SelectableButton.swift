//
//  Selectable.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/27.
//

import SwiftUI

struct SelectableButton: View {
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
                Spacer()
            }
            .frame(height: 48)
            .background(isSelected ? Color.init(hex: "E5E2D7") : Color.init(hex: "E5E2D7"))
            .foregroundColor(isSelected ? Color.init(hex: "F9F9F9") : Color.init(hex: "292929"))
            .cornerRadius(10)
        }
    }
}


struct Selectable_Previews: PreviewProvider {
    static var previews: some View {
        SelectableButton(
            title: "다음",
            isSelected: true) {
            print("")
        }
        .frame(width: UIScreen.main.bounds.width - 50)
    }
}
