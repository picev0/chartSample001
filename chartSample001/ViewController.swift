//
//  ViewController.swift
//  chartSample001
//
//  Created by Shuhei Murata on 2018/03/19.
//  Copyright © 2018年 xyz.pice001. All rights reserved.
//

import UIKit
import Foundation
import Charts

class ViewController: UIViewController, ChartViewDelegate {
    var chartView : CandleStickChartView!
    // 日付
    var date = ["2/18","2/25","3/4","3/11","3/18"]
    //始値
    var test_data1 = [106.33, 106.85, 105.70, 106.81, 105.92]
    //終値
    var test_data2 = [106.89, 105.75, 106.80, 106.02, 105.99]
    //高値
    var test_data3 = [107.91, 107.69, 107.06, 107.31, 106.06]
    //安値
    var test_data4 = [106.08, 105.25, 105.36, 105.61, 105.92]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://www.cl9.info/entry/2016/12/19/234222
        var rect = view.bounds
        rect.origin.y += 20
        rect.size.height -= 20
        
        chartView = CandleStickChartView.init(frame: rect)
        
        let entries = [
            CandleChartDataEntry(x: 1, shadowH: 107.91, shadowL: 106.08, open: 106.33, close: 106.89),
            CandleChartDataEntry(x: 2, shadowH: 107.69, shadowL: 105.25, open: 106.85, close: 105.75),
            CandleChartDataEntry(x: 3, shadowH: 107.06, shadowL: 105.36, open: 105.70, close: 106.80),
            CandleChartDataEntry(x: 4, shadowH: 107.31, shadowL: 105.61, open: 106.81, close: 106.02),
            CandleChartDataEntry(x: 5, shadowH: 106.06, shadowL: 105.92, open: 105.92, close: 105.99),
            ]
        let set = CandleChartDataSet(values: entries, label: "Test")
        chartView.data = CandleChartData(dataSet: set)
        view.addSubview(chartView)
        /*
        struct Currencies: Codable {
            let high: String
            let open: String
            let bid: String
            let currencyPairCode: String
            let ask: String
            let low: String
        }
        
        struct CurArray: Codable {
            let quotes: [Currencies]
        }
        
        let url = URL(string: "https://www.gaitameonline.com/rateaj/getrate")!
        let decoder: JSONDecoder = JSONDecoder()
        
        do {
            let data = try Data(contentsOf: url, options: [])
            let currencies = try decoder.decode(CurArray.self, from: data)
            print(currencies)
            setChart(x: currencies.quotes.high, y: currencies.quotes.open)
            
        } catch {
            print(error)
        }
 */
        /*
        self.chartView.delegate = self
        
        setChart(x: date, shadowH: test_data3, shadowL: test_data4, open: test_data1, close: test_data2)
        
        self.view.addSubview(chartView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setChart( x: [String], shadowH: [Double], shadowL: [Double], open: [Double], close: [Double]) {
        //グラフタイトル
        chartView.chartDescription?.text = "testestest"
        
        //アニメーション
        //chartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
        
        // 横軸を非表示
        chartView.xAxis.enabled = false
        
        //y軸
        var data = [CandleChartDataEntry]()
        
        for i in 0..<open.count {
            let dataEntry = CandleChartDataEntry(x:Double(i), shadowH:Double(i), shadowL: Double(i), open: Double(i), close: Double(i))
            /*
            let dataEntry = CandleStickChartRenderer(dataProvider: CandleChartDataProvider, animator: Double(i), viewPortHandler: Double(i))
 */
            data.append(dataEntry)
            print("a")
        }
        //グラフをセット
        let DataSet = CandleChartDataSet(values: data, label: "test_charts")
        chartView.data = CandleChartData(dataSet: DataSet)
        
        //グラフの色
        DataSet.colors = ChartColorTemplates.vordiplom()
 */
    }

}

