//
//  ContentView.swift
//  Programmatic-nav
//
//  Created by sergio joel camacho zarco on 18/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var navigationState : NavigationState
    
    var body: some View {
        VStack {
            Button("Home"){
                navigationState.routes.append(.home)
            }
            Button("Detail"){
                navigationState.routes.append(.detail(Customer(name: "Felicity J.")))
            }
        }
        .padding()
    }
}
