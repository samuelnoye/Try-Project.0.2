//
//  LandingPage.swift
//  Try-Project
//
//  Created by Samuel Noye on 09/12/2021.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    @AppStorage("isOnboardingView") var isOnboarding: Bool = true

    //MARK: - BODY
    var body: some View {
        ZStack{
            Image("bgimg")
                .resizable()
                .scaledToFit()
            
            VStack(spacing: 20){
           
                VStack(spacing: 20){
                    Spacer()
                 
                    //MARK: - MAIN
                    VStack(spacing: 20){
                        
                        //MARK: - LOGO
                        Image("logo")
                            .resizable()
                            .frame(width: 200, height:90, alignment: .center)
                            .scaledToFit()
                           
                        
                        //MARK: - HEADING
                        Text("""
                         Cutting edge vision
                         based safety systems
                         for motorcycles
                         """)
                            .font(.system(size: 30))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            
                         //MARK: - SUBHEADING
                        Text("""
                             Take control of your safety
                             seamlessly.
                             """)
                            .font(.title3)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                           
                    }
                    Spacer()
                    
                    
                    //MARK: - BOTTOM
                    VStack(spacing:20){
                     
                        //: - Button
                      Button(action:{
                          isOnboarding = false
                     }){
               
                    Text("Create an account")
                             .foregroundColor(Color.white)
                             .padding(.horizontal,130)
                             .padding(.vertical,20)
                    }//: Button
                    
                     .background(
                        Capsule()
                            .fill(Color("MainColor")))
                        //: - Button
                    HStack(spacing:5){
                        Text("Already have an account?")
                                 .foregroundColor(Color.white)
                        Text("Login")
                                 .foregroundColor(Color("MainColor"))
                      }//:
                    }
                    .frame(maxWidth: .infinity, maxHeight: 230)
                        
                }
            
        }
     
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.black)
        .edgesIgnoringSafeArea(.all)
     
   }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
