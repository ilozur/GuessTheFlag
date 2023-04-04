//
//  Overview.swift
//  GuessTheFlag
//
//  Created by Edmond Podlegaev on 04.04.2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color(red: 1, green: 0.8, blue: 0)
            }
                Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
