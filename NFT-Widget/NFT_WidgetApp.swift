//
//  NFT_WidgetApp.swift
//  NFT-Widget
//
//  Created by 三谷大典 on 2022/05/25.
//

import SwiftUI

@main
struct NFT_WidgetApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
