//
//  MagneticTTApp.swift
//  MagneticTT
//
//  Created by Artur Ageev on 27.05.2024.
//

import SwiftUI

@main
struct MagneticTTApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
