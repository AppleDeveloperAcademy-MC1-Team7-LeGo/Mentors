//
//  EmptyNavigationLink.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/30.
//

import SwiftUI

struct EmptyNavigationLink<Content>: View where Content: View {

    @Binding var isActive: Bool
    let destination: () -> Content

    init(isActive: Binding<Bool>,
         @ViewBuilder _ destination: @escaping () -> Content) {
        self._isActive = isActive
        self.destination = destination
    }

    var body: some View {
        NavigationLink(isActive: $isActive) {
            destination()
        } label: {
            EmptyView()
        }
    }
}
