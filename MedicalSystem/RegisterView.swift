//
//  RegisterView.swift
//  MedicalSystem
//
//  Created by Denis Bokov on 02.10.2022.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            Text("Регистрация")
                .fontWeight(.heavy)
                .font(.largeTitle)
                .padding([.top, .bottom], 20)
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundColor(Color.init(.label)).opacity(0.75)
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
