//
//  Programmatic_navApp.swift
//  Programmatic-nav
//
//  Created by sergio joel camacho zarco on 18/06/23.
//

import SwiftUI

enum Route : Hashable{
    case home
    case detail(Customer)
}

class NavigationState : ObservableObject{
    @Published var routes : [Route] = []
}

@main
struct Programmatic_navApp: App {
    @StateObject private var navigationState = NavigationState()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigationState.routes){
                ContentView()
                    
                    .navigationDestination(for: Route.self) { route in
                        switch route{
                        case .home:
                            Text("Home")
                        case .detail(let customer):
                            CustomerDetailView(customer: customer)
                        }
                    }
            }
            .environmentObject(navigationState)
            
        }
    }
}
