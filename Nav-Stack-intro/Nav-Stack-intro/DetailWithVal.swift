//
//  DetailWithVal.swift
//  Nav-Stack-intro
//
//  Created by sergio joel camacho zarco on 17/06/23.
//

import SwiftUI

struct DetailWithVal: View {
    let value : Int
    
    var body: some View {
        Text("value : \(value)")
            .font(.title)
            .foregroundColor(.cyan)
    }
}


