//
//  Reminder_AppApp.swift
//  Reminder App
//
//  Created by NIKHIL on 25/03/24.
//

import SwiftUI
import SwiftData
@main
struct Reminder_AppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
        .modelContainer(for: ReminderList.self)
    }
}
