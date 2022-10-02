//
//  MedicalSystemApp.swift
//  MedicalSystem
//
//  Created by Denis Bokov on 02.10.2022.
//

import SwiftUI

@main
struct MedicalSystemApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
