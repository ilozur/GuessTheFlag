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
                Color.green
                    .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 50)
                Color(red: 0, green: 0, blue: 1)
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
