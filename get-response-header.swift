#!/usr/bin/env xcrun swift

import Foundation

// 获取参数列表
var argsList = [String]();

for arg in Process.arguments {
    
    argsList.append(arg);
    
}

if argsList.count != 2 {
    
    println("\u{001B}[0;31m参数错误! 缺少URL");
    exit(0);
    
}

// 获取response头
func getHeader(url: String) {
    
    let urlString: String = url;
    var url: NSURL!;
    url = NSURL(string:urlString);
    
    var request = NSMutableURLRequest(URL: url);
    request.HTTPMethod = "GET";
    request.timeoutInterval = 1;
    
    //响应对象
    var response:NSURLResponse?
    //错误对象
    var error:NSError?;
    
    //发出请求
    var received:NSData? = NSURLConnection.sendSynchronousRequest(request, returningResponse: &response, error: &error);
    
    if(error != nil) {
        
        println("\u{001B}[0;31mError Code:\(error!.code)\n\(error!.description)");
        
    } else {
        let httpHeader=response as! NSHTTPURLResponse;
        
        let header:NSDictionary = httpHeader.allHeaderFields;
        
        for (key, value) in header {
        
            println("\u{001B}[0;32m \(key): \u{001B}[0;33m\(value)")
            
        }
        
    }
    
}


getHeader(argsList[1]);