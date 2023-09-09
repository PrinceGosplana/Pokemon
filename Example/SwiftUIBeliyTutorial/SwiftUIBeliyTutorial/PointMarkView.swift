//
//  PointMarkView.swift
//  SwiftUIBeliyTutorial
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//

import SwiftUI
import Charts

struct Insect {
    let name: String
    let family: String
    let wingLength: Double
    let wingWidth: Double
    let weight: Double
}

struct PointMarkView: View {
    var data: [Insect] = [
        Insect(name: "Hepialidae", family: "Lepidoptera", wingLength: 61, wingWidth: 52, weight: 22),
        Insect(name: "Danaidae", family: "Lepidoptera", wingLength: 60, wingWidth: 48, weight: 24),
        Insect(name: "Riodinidae", family: "Lepidoptera", wingLength: 53, wingWidth: 43, weight: 18),
    ]
    var data2: [Insect] = [
        Insect(name: "Hepialid", family: "Lepidoptera2", wingLength: 41, wingWidth: 72, weight: 32),
        Insect(name: "Danaid", family: "Lepidoptera2", wingLength: 40, wingWidth: 48, weight: 54),
        Insect(name: "Riodinid", family: "Lepidoptera2", wingLength: 33, wingWidth: 43, weight: 18),
    ]

    var body: some View {
        Chart(data, id:\.name) {
            PointMark(
                x: .value("Wing Length", $0.wingLength),
                y: .value("Wing Width", $0.wingWidth)
            )
        }
        Chart(data2, id:\.weight) {
            PointMark(
                x: .value("Wing Length", $0.wingLength),
                y: .value("Wing Width", $0.wingWidth)
            )
            .foregroundStyle(by: .value("Family", $0.family))
            .symbol(by: .value("Family", $0.family))
        }
    }
}

struct PointMarkView_Previews: PreviewProvider {
    static var previews: some View {
        PointMarkView()
    }
}
