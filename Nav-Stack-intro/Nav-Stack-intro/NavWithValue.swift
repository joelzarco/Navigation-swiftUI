//
//  NavWithValue.swift
//  Nav-Stack-intro
//
//  Created by sergio joel camacho zarco on 17/06/23.
//

import SwiftUI

struct NavWithValue: View {
    var body: some View {
        
        NavigationStack{
            // it's cleaner to group navLinks and destinations at the endo as modifiers
            VStack{
                NavigationLink("Details", value: 99) // value to diferentiate direction has to be hashable, enc/decodable
                // example with string as value
                NavigationLink("customer", value: "Felicity J.")
            }
            .padding()
                .navigationDestination(for: Int.self) { value in // value type has to be especified and can be passed to next view
                    DetailWithVal(value: value)
                }
                .navigationDestination(for: String.self) { n in
                    CustomerView(name: n)
                }
        } // nv stck
    }
}
