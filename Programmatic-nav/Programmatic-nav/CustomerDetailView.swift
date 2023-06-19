//
//  Customer.swift
//  Programmatic-nav
//
//  Created by sergio joel camacho zarco on 19/06/23.
//

import SwiftUI

struct Customer : Identifiable, Hashable{
    let id = UUID()
    let name : String
}

struct CustomerDetailView: View {
    let customer : Customer
    @EnvironmentObject private var navigationState : NavigationState
    
    
    var body: some View {
        VStack{
            Text("CustomerDetails : \(customer.name)")
                .font(.title)
                .foregroundColor(.pink)
            Button("Go back home"){
                navigationState.routes.append(.home)
            }
        }
        
    }
}
