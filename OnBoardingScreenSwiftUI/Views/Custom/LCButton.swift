//
//  LCButton.swift
//  OnBoardingScreenSwiftUI
//
//  Created by Antoni on 09/03/20.
//  Copyright © 2020 antonilhin. All rights reserved.
//

import SwiftUI

struct LCButton: View {
    var text = "Next"
    var action: (()->()) = {}
    
    var body: some View {
      Button(action: {
        self.action()
      }) {
        HStack {
            Text(text)
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(.vertical)
                .accentColor(Color.white)
                .background(Color("accentColor"))
                .cornerRadius(30)
            }
        }
    }
}

struct LCButton_Previews: PreviewProvider {
    static var previews: some View {
        LCButton()
    }
}

