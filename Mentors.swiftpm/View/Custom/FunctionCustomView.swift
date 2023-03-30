//
//  FunctionCustomView.swift
//  Mentors
//
//  Created by 제나 on 2023/03/28.
//

import SwiftUI

struct FunctionCustomView: View {
    
    var imageName: String
    var functionName: String
    
    var body: some View {
        VStack {
            
            Circle()
                .fill(Color(hex: "FDF4D1"))
                .frame(width: 50, height: 50)
                .overlay {
                    Image(systemName: "\(imageName)")
                        .font(.system(size: 24))
                        .foregroundColor(Color(hex: "292929"))
                    }
            Text("\(functionName)")
                .font(.system(size: 12))
                .foregroundColor(Color(hex: "292929"))
        }
    }
}
