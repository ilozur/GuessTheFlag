//
//  Overview.swift
//  GuessTheFlag
//
//  Created by Edmond Podlegaev on 04.04.2023.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        LinearGradient(gradient: Gradient(stops: [
            .init(color: .white, location: 0.45),
            .init(color: .black, location: 0.55)
        ]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
        
        RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
            .ignoresSafeArea()
        
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
            .ignoresSafeArea()
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
