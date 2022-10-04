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
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding([.top, .bottom], 20)
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.init(.label)).opacity(0.75)
                HStack {
                    TextField("Введите свой email", text: $auth.email)
                    if auth.email != "" {
                        Image("check")
                            .foregroundColor(.gray)
                    }
                }
                
                Divider()
                
            }.padding(.bottom, 16)
            
            VStack(alignment: .leading) {
                Text("Password")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.init(.label)).opacity(0.75)
                
                SecureField("Введите свой пароль", text: $auth.password)
                
                
                Divider()
                
            }.padding(.bottom, 16)
            
            VStack {
                Button(action: {}) {
                    Text("Войти")
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 120)
                        .padding()
                }.background(.green)
                    .clipShape(Capsule())
                    .padding(.top, 45)
                
                Text("или")
                    .foregroundColor(.gray.opacity(0.5))
                    .padding(.top, 30)
                
                HStack(spacing: 8) {
                    Text("У вас нет аккаунта?")
                        .foregroundColor(.gray.opacity(0.5))

                    Button(action: {}) {
                        Text("Регистрация")
                    }
                }.padding(.top, 25)
            }
        } .padding(.horizontal, 16)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
