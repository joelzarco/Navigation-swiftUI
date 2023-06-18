//
//  NavWithList.swift
//  Nav-Stack-intro
//
//  Created by sergio joel camacho zarco on 17/06/23.
//

import SwiftUI

struct Customer : Identifiable, Hashable{
    let id = UUID()
    let name : String
    
}
struct NavWithList: View {
    let customers = [Customer(name: "Emma"), Customer(name: "Evie"), Customer(name: "Felicity"), Customer(name: "Alma")]
    
    var body: some View {
        NavigationStack{
            List(customers){ customer in
                NavigationLink(customer.name, value: customer)
            } // single nav destination for all values, outside list
            .navigationDestination(for: Customer.self) { customer in
                CustomerDetail(customer: customer)
            }
        }
    }
}

