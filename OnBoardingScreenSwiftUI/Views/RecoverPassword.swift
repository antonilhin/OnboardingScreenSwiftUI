//
//  RecoverPassword.swift
//  OnBoardingScreenSwiftUI
//
//  Created by Antoni on 09/03/20.
//  Copyright © 2020 antonilhin. All rights reserved.
//

import SwiftUI

struct RecoverPasswordView: View {
    
    @State private var email = ""
    @Binding var presentPasswordRecoverySheet: Bool
    
    var body: some View {
        VStack(spacing: 40) {
            Image("Logo")
            Text("Recover Password").font(.title).bold()
            VStack {
                LCTextfield(value: self.$email, placeholder: "Email", icon: Image(systemName: "at"))
                LCButton(text: "Reset Password") {}
            }
            
            Button(action: {
                self.presentPasswordRecoverySheet.toggle()
            }) {
                HStack {
                    Text("Cancel").accentColor(Color.accentColor)
                }
            }
            
        }.padding()
    }
}

struct RecoverPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverPasswordView(presentPasswordRecoverySheet: .constant(false))
    }
}
