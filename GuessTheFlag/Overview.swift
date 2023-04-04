//
//  Overview.swift
//  GuessTheFlag
//
//  Created by Edmond Podlegaev on 04.04.2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        VStack {
            Section {
                Button("Button #1") {}
                    .buttonStyle(.bordered)
                Button("Button #2", role: .destructive) {}
                    .buttonStyle(.bordered)
                Button("Button #3") {}
                    .buttonStyle(.borderedProminent)
                    .tint(.mint)
                Button("Button #4", role: .destructive) {}
                    .buttonStyle(.borderedProminent)
            }
            Section {
                Button {
                    print("Button was tapped")
                } label: {
                    Text("Tap me!")
                        .padding()
                        .foregroundColor(.white)
                        .background(.red)
                }
            }
            Section {
                Image(systemName: "pencil")
                Button {
                    print("Edit button was tapped")
                } label: {
                    Image(systemName: "pencil")
                }
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
            }
        }
    }
}
    func executeDelete() {
        print("New deleting")
    }
    

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
