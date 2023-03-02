//
//  ContentView.swift
//  Restart
//
//  Created by Jonathan Eduardo Meriño Bolívar - Ceiba Software on 1/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingActive: Bool = false
    
    var body: some View {
        ZStack {
            if isOnboardingActive {
                OnboardingView()
            }else {
                HomeView()
            }
        }.animation(.easeOut(duration: 0.5), value: isOnboardingActive)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
