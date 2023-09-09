//
//  ChartLinesView.swift
//  SwiftUIBeliyTutorial
//
//  Created by Oleksandr Isaiev on 08.09.2023.
//

import SwiftUI
import Charts

struct ProfitOverTime {
    var date: Date
    var profit: Double
}



struct ChartLinesView: View {

    let departmentAProfit: [ProfitOverTime] = [
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, profit: 12),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, profit: 15),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, profit: 14),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: 0, to: Date())!, profit: 19)
    ]


    let departmentBProfit: [ProfitOverTime] = [
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -3, to: Date())!, profit: 8),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -2, to: Date())!, profit: 17),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: -1, to: Date())!, profit: 11),
        ProfitOverTime(date: Calendar.current.date(byAdding: .day, value: 0, to: Date())!, profit: 22)
    ]

    var body: some View {
        Chart {
            ForEach(departmentAProfit, id: \.date) { item in
                LineMark(
                    x: .value("Date", item.date),
                    y: .value("Profit A", item.profit),
                    series: .value("Company", "A")
                )
                .foregroundStyle(.blue)
            }
            ForEach(departmentBProfit, id: \.date) { item in
                LineMark(
                    x: .value("Date", item.date),
                    y: .value("Profit B", item.profit),
                    series: .value("Company", "B")
                )
                .foregroundStyle(.green)
            }
            RuleMark(
                y: .value("Threshold", 15)
            )
            .foregroundStyle(.red)
        }
    }
}

struct ChartLinesView_Previews: PreviewProvider {
    static var previews: some View {
        ChartLinesView()
    }
}
