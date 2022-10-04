//
//  LoginView.swift
//  MedicalSystem
//
//  Created by Denis Bokov on 02.10.2022.
//

import SwiftUI

struct LoginView: View {
    
    @State private var auth = Authentication()
    
    var body: some View {
        VStack {
            Text("Вход в систему")
                .padding()
                .font(.title.bold())
                .background(Color(.systemGreen))
                .cornerRadius(25)
            
            VStack {
                TextField("Введите email", text: $auth.email)
                    .padding()
                    .font(.title.bold())
                    .background(Color(.systemGreen))
                    .cornerRadius(10)
                    .padding()
                
                SecureField("Введите пароль", text: $auth.password)
                    .padding()
                    .font(.title.bold())
                    .background(Color(.systemGreen))
                    .cornerRadius(10)
                    .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
