//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/3/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
