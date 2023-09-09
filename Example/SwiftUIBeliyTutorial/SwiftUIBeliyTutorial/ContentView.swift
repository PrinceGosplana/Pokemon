//
//  ContentView.swift
//  SwiftUIBeliyTutorial
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "bus")
                .imageScale(.large)
                .oranged()
            Text("Hello, world!")
                .borderedCaption()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }

    func oranged() -> some View {
        modifier(ImageCaption())
    }
}

struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(Color.blue)
    }
}

struct ImageCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.orange)
    }
}
