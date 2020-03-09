//
//  UIApplicationExt.swift
//  OnBoardingScreenSwiftUI
//
//  Created by Antoni on 09/03/20.
//  Copyright © 2020 antonilhin. All rights reserved.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
