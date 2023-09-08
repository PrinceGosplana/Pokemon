//
//  ContentView.swift
//  PokemonExample
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//

import SwiftUI
import Pokemon

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
