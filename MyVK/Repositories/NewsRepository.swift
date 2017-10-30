////
////  NewsRepository.swift
////  MyVK
////
////  Created by Дамир Зарипов on 30.10.17.
////  Copyright © 2017 itisioslab. All rights reserved.
////
//
//import Foundation
//
//class NewsRepository: Repository {
//    
//    typealias T = News
//    private var news = [News]()
//    
//    private var currentId = 1
//    static let instance = NewsRepository()
//    
//    private init() {}
//    
//    func synsSave(with news: News) {
//        self.news[currentId] = news
//        currentId = currentId + 1;
//    }
//    
//    func asynSave(with: News, complitionBlock: @escaping (Bool) -> ()) {
//        <#code#>
//    }
//    
//    func syncGetAll(with: News) {
//        
//    }
//    
//    func asynGetAll(with: News) {
//        <#code#>
//    }
//    
//    func syncSearch(by id: Int) -> News? {
//        if let resultNews = news[id] {
//            return resultNews
//        }
//        return nil
//    }
//    
//    func synsSave(with: News) {
//        <#code#>
//    }
//    
//    func asynSave(with: News, complitionBlock: @escaping (Bool) -> ()) {
//        <#code#>
//    }
//    
//    func syncGetAll(with: News) {
//        <#code#>
//    }
//    
//    func asynGetAll(with: News) {
//        <#code#>
//    }
//    
//    func syncSearch(with: News) {
//        <#code#>
//    }
//    
//    func asynSearch(with: News, complitionBlock: @escaping (Bool) -> ()) {
//        <#code#>
//    }
//    func asynSearch(with: News, complitionBlock: @escaping (Bool) -> ()) {
//        <#code#>
//    }
//    
//}

