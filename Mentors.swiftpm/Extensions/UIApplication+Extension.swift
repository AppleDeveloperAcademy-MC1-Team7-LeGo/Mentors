//
//  UIApplication+Extension.swift
//  
//
//  Created by 제나 on 2023/03/29.
//
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
