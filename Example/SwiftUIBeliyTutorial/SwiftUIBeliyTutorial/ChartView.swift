//
//  ChartView.swift
//  SwiftUIBeliyTutorial
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//

import SwiftUI
import Charts

struct ValuePerCategory {
    var category: String
    var value: Double
}

struct ChartView: View {

    let data: [ValuePerCategory] = [
        .init(category: "A", value: 5),
        .init(category: "B", value: 19),
        .init(category: "C", value: 7)
    ]

    var body: some View {
        Chart(data, id: \.category) { item in
            BarMark(
                x: .value("Category", item.category),
                y: .value("Value", item.value)
            )
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
