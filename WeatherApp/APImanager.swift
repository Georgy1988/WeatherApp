//
//  APImanager.swift
//  WeatherApp
//
//  Created by Georgi on 01.12.2023.
//

import Foundation

typealias JSONTask = URLSessionDataTask
typealias JSONCompletionHandler = ([String: AnyObject]?, HTTPURLResponse?, Error?) -> Void

enum APIResult<T> {
    case Success(T)
    case Failure(Error)
}

protocol APIManager {
    var sessionConfiguration: URLSessionConfiguration { get }
    var session: URLSession { get }
    
    func JSONTaskWith(request: URLRequest, complitionHandler: JSONCompletionHandler)  -> JSONTask
//    func fetch<T>(request: URLRequest, parse: ([String: AnyObject])) -> <T>?, complrtionHandler: (APIResult<T>) -> void
    
    func fetch<T>(requset:URLRequest, parse: ([String: AnyObject]) -> T?, completionHandler: (APIResult<T>) -> Void)
    
    init (sessionConfiguration: URLSessionConfiguration)
}
