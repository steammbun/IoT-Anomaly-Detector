//
//  DeviceDataLineChart.swift
//  IoT Anomaly Detector
//
//  Created by David Hebert on 11/24/21.
//
import Foundation
import UserNotifications
import SwiftUI
import Charts
import Amplify

struct DeviceDataLineChart: UIViewRepresentable {
    let DeviceDataLineChart = LineChartView()
    var entriesIn: [ChartDataEntry]
    func makeUIView(context: Context) -> LineChartView {
        return DeviceDataLineChart
    }
    
    func updateUIView(_ uiView: LineChartView, context: Context) {
        setChartData(uiView)
        configureChart(uiView)
        formatXAxis(xAxis: uiView.xAxis)
        formatYAxis(leftAxis: uiView.leftAxis)
        formatLegend(legend: uiView.legend)
        uiView.notifyDataSetChanged()
    }
    
    func setChartData(_ deviceDataLineChart: LineChartView){
        let dataSetIn = LineChartDataSet(entries: entriesIn)
        let dataSets: [LineChartDataSet] = [dataSetIn]
        let lineChartData = LineChartData(dataSets: dataSets)
        deviceDataLineChart.data = lineChartData
        formatDataSet(dataSet: dataSetIn, label: "", color: .black)
    }
    
    func formatDataSet(dataSet: LineChartDataSet, label: String, color: UIColor){
        dataSet.label = label
        dataSet.colors = [UIColor.black]
        dataSet.valueColors = [.black]
        dataSet.circleColors = [UIColor.black]
        dataSet.circleRadius = 1
        dataSet.circleHoleRadius = 0
        dataSet.mode = .horizontalBezier
        dataSet.lineWidth = 1
        let format = NumberFormatter()
        format.numberStyle = .none
        //dataSet.valueFormatter = DefaultValueFormatter(formatter: format)
        //dataSet.valueFont = UIFont.systemFont(ofSize: 12)
    }
    
    func configureChart(_ lineChart: LineChartView) {
        lineChart.noDataText = "No Data"
        lineChart.drawGridBackgroundEnabled = true
        lineChart.gridBackgroundColor = UIColor.tertiarySystemFill
        lineChart.drawBordersEnabled = true
        lineChart.rightAxis.enabled = false
        lineChart.setScaleEnabled(true)
        if lineChart.scaleX == 1.0 {
            lineChart.zoom(scaleX: 1.5, scaleY: 1, x: 0, y: 0)
        }
        lineChart.animate(xAxisDuration: 0, yAxisDuration: 0.5, easingOption: .linear)
        let marker:BalloonMarker = BalloonMarker(color: UIColor.blue, font: UIFont(name: "Helvetica", size: 12)!, textColor: UIColor.white, insets: UIEdgeInsets(top: 7.0, left: 7.0, bottom: 7.0, right: 7.0))
        marker.minimumSize = CGSize(width: 75, height: 35)
        lineChart.marker = marker
    }
    
    func formatXAxis(xAxis: XAxis){
        xAxis.labelPosition = .bottom
        xAxis.valueFormatter = DefaultAxisValueFormatter(formatter: NumberFormatter())
        xAxis.labelTextColor = .black
        xAxis.labelFont = UIFont.boldSystemFont(ofSize: 12)
        //xAxis.axisMinimum = -1
    }
    
    func formatYAxis(leftAxis: YAxis) {
        let leftAxisFormatter = NumberFormatter()
        leftAxisFormatter.numberStyle = .none
        leftAxis.valueFormatter = DefaultAxisValueFormatter(formatter: leftAxisFormatter)
        leftAxis.labelTextColor = .black
        leftAxis.labelFont = UIFont.boldSystemFont(ofSize: 12)
        leftAxis.axisMaximum = 101
        leftAxis.axisMinimum = 30
    }
    
    func formatLegend(legend: Legend) {
        legend.textColor = UIColor.black
        legend.horizontalAlignment = .right
        legend.verticalAlignment = .top
        legend.drawInside = true
        legend.yOffset = 30.0
    }
}
