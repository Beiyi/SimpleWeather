// Playground - noun: a place where people can play

import UIKit

//获取json数据所在的网址
var URL = NSURL(string:"http://www.weather.com.cn/data/sk/101010100.html")

//将网址转换为data格式
var data = NSData.dataWithContentsOfURL(URL, options: NSDataReadingOptions.UncachedRead, error: nil)

//用json解释器读取data变量中保存的网址所包含的json内容
var json: AnyObject! = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments, error: nil)

//读取data中的weatherinfo内容
var info: AnyObject! = json.objectForKey("weatherinfo")

//分别读取weatherinfo中的各项子内容
var city = info.objectForKey("city")

var SD = info.objectForKey("SD")

var temp = info.objectForKey("temp")