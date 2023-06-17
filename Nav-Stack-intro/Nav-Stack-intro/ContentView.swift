//
//  ContentView.swift
//  Nav-Stack-intro
//
//  Created by sergio joel camacho zarco on 17/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            NavigationLink("Goto details"){
                DetailsView()
            }
            // other form is with label arg
            NavigationLink{
                DetailsView()
            }label: {
                // label has more ui flexibility, can contain images
                HStack{
                    Image(systemName: "heart")
                    Text("Show details")
                        .font(.title)
                        .bold()
                }
            }
        } // nv stck
    }
}
