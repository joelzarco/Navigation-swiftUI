//
//  CustomerDetail.swift
//  Nav-Stack-intro
//
//  Created by sergio joel camacho zarco on 17/06/23.
//

import SwiftUI

struct CustomerDetail: View {
    let customer : Customer
    
    var body: some View {
        Text("Welcome \(customer.name)")
            .font(.title).bold()
            .foregroundColor(.mint)
    }
    
}


