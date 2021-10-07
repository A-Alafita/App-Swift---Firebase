//
//  App06_TODO_firebaseApp.swift
//  App06-TODO-Firebase
//
//  Created by Alumno on 07/10/21.
//

import SwiftUI
import Firebase
@main
struct App06_TODO_firebaseApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
    }
}
