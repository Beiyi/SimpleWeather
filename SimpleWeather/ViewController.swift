//
//  ViewController.swift
//  SimpleWeather
//
//  Created by 张北一 on 14-7-19.
//  Copyright (c) 2014年 beiyi.zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //添加按钮点击事件
    @IBAction func loadweather(sender: UIButton) {
        getweather()
    }
    
    //调用TextView控件
    @IBOutlet var WeatherText: UITextView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getweather()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//自定义方法，获取天气信息并填充到TextView
    func getweather(){
        var URL = NSURL(string:"http://www.weather.com.cn/data/sk/101010100.html")
        var data = NSData.dataWithContentsOfURL(URL, options: NSDataReadingOptions.UncachedRead, error: nil)
        var json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil)
        var info: AnyObject! = json.objectForKey("weatherinfo") //Swift要求显性生命数据类型为AnyObject!，不写可以运行，但会报警
        var city = info.objectForKey("city")
        var SD = info.objectForKey("SD")
        var temp = info.objectForKey("temp")
        WeatherText.text = "城市：\(city)\n温度：\(temp)摄氏度\n湿度：\(SD)"
    }
}

