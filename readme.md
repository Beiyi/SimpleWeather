#简单天气
=====
简单天气是一款显示实时天气信息的APP。APP通过[中国天气网](http://www.weather.com.cn/)获取气象局的`json`格式气象数据。

事实上你可以通过修改本APP代码显示任何你可以从网络上获取到的json数据。例如同时查看今天的天气和你关注的比赛而不必在不同APP间切换。你可以显示不同数据来源的气象信息进行对比参考——事实上，有时候yahoo等网站的天气预报还是比较准的。

##知识点

- NSData.dataWithContentsOfURL  //从网址获取json原始数据
- NSJSONSerialization.JSONObjectWithData  //解析json数据
- json.objectForKey  //提取一组数据中的某一项，如“城市”、“温度”

##任务

- 添加风向、风力等信息
- 添加一个Label或者ImageView，针对某项数据进行报警
- 添加其他数据来源的信息


##截图预览

![preview](/preview/pv1.png) 