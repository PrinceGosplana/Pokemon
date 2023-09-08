//
//  SwiftUIView.swift
//  
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//
import Foundation
import SwiftUI

@available(iOS 13.0, *)
public struct SwiftUIView: View {
    public init() {}
    public var body: some View {
        Text("My pokemon downloader")
        if let image = UIImage(named: "pngegg", in: .module, with: nil) {
            Image(uiImage: image)
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .aspectRatio(contentMode: .fit)
        }
    }
}

