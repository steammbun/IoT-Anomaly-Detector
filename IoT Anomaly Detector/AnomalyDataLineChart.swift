//
//  AnomalyDataLineChart.swift
//  IoT Anomaly Detector
//
//  Created by David Hebert on 11/24/21.
//
import Foundation
import UserNotifications
import SwiftUI
import Charts
import Amplify

struct AnomalyDataLineChart: UIViewRepresentable {
    let AnomalyDataLineChart = LineChartView()
    var entriesIn: [ChartDataEntry]
    func makeUIView(context: Context) -> LineChartView {
        return AnomalyDataLineChart
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
        if(deviceDataLineChart.scaleX > 1){
            zoomFormatDataSet(dataSet: dataSetIn, label: "", color: .red)
        }
        else{
            formatDataSet(dataSet: dataSetIn, label: "", color: .red)
        }
    }
    
    func formatDataSet(dataSet: LineChartDataSet, label: String, color: UIColor){
        dataSet.label = label
        dataSet.colors = [UIColor.red]
        dataSet.valueColors = [.red]
        dataSet.circleColors = [UIColor.red]
        dataSet.circleRadius = 1.5
        dataSet.circleHoleRadius = 0
        dataSet.mode = .horizontalBezier
        dataSet.lineWidth = 0
        let format = NumberFormatter()
        format.numberStyle = .none
        dataSet.valueFormatter = DefaultValueFormatter(formatter: format)
        dataSet.valueFont = UIFont.systemFont(ofSize: 0)
    }
    
    func zoomFormatDataSet(dataSet: LineChartDataSet, label: String, color: UIColor){
        dataSet.label = label
        dataSet.colors = [UIColor.red]
        dataSet.valueColors = [.red]
        dataSet.circleColors = [UIColor.red]
        dataSet.circleRadius = 1.5
        dataSet.circleHoleRadius = 0
        dataSet.mode = .horizontalBezier
        dataSet.lineWidth = 0
        let format = NumberFormatter()
        format.numberStyle = .none
        dataSet.valueFormatter = DefaultValueFormatter(formatter: format)
        dataSet.valueFont = UIFont.systemFont(ofSize: 10)
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
        let marker:BalloonMarker = BalloonMarker(color: UIColor.red, font: UIFont(name: "Helvetica", size: 12)!, textColor: UIColor.white, insets: UIEdgeInsets(top: 7.0, left: 7.0, bottom: 7.0, right: 7.0))
        marker.minimumSize = CGSize(width: 75, height: 35)
        lineChart.marker = marker
    }
    
    func formatXAxis(xAxis: XAxis){
        xAxis.labelPosition = .bottom
        xAxis.valueFormatter = DefaultAxisValueFormatter(formatter: NumberFormatter())
        xAxis.labelTextColor = .red
        xAxis.labelFont = UIFont.boldSystemFont(ofSize: 12)
        //xAxis.axisMaximum = 100
        xAxis.axisMinimum = -1
    }
    
    func formatYAxis(leftAxis: YAxis) {
        let leftAxisFormatter = NumberFormatter()
        leftAxisFormatter.numberStyle = .none
        leftAxis.valueFormatter = DefaultAxisValueFormatter(formatter: leftAxisFormatter)
        leftAxis.labelTextColor = .red
        leftAxis.labelFont = UIFont.boldSystemFont(ofSize: 12)
        leftAxis.axisMaximum = 101
        //leftAxis.axisMinimum = -1
    }
    
    func formatLegend(legend: Legend) {
        legend.textColor = UIColor.red
        legend.horizontalAlignment = .right
        legend.verticalAlignment = .top
        legend.drawInside = true
        legend.yOffset = 30.0
    }
}
