//
//  OrdersApp.swift
//  Orders
//
//  Created by Mark Nashed on 10/28/23.
//

import SwiftUI
import SwiftData

@main
struct OrdersApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
    Item.self,
    Orders.self,
    People.self,
    Product.self,
])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
