//
//  Try_Project_0_2App.swift
//  Try-Project.0.2
//
//  Created by Samuel Noye on 12/12/2021.
//

import SwiftUI

@main
struct Try_Project_0_2App: App {
    //MARK: - PROPERTY
@AppStorage("isOnboardingView") var isOnboarding: Bool = true
 
    
var body: some Scene {
    WindowGroup {
        if isOnboarding{
            OnboardingView()
        } else {
            ContentView()
        }
        
    }
}
}
