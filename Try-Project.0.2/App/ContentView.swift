//
//  ContentView.swift
//  Try-Project.0.2
//
//  Created by Samuel Noye on 12/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("isOnboardingView") var isOnboarding: Bool = false
     
    
    
    //MARK: - PREVIEW
    var body: some View {
        //Button
      Button(action:{
          isOnboarding = true
     }){

    Text("Create an account")
             .foregroundColor(Color.white)
             .padding(.horizontal,130)
             .padding(.vertical,20)
    }//: Button
    
     .background(
        Capsule()
            .fill(Color("MainColor")))
    }
}
  //MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
