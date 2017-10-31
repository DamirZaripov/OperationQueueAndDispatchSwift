//
//  NewsRepository.swift
//  MyVK
//
//  Created by Дамир Зарипов on 30.10.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import Foundation

class NewsRepository: RepositoryProtocol {
    
    typealias T = News
    public var news = [News]()
    
    static let instance = NewsRepository()
    
    private init() {}
    
    func synsSave(with news: News) {
        self.news.append(news)
    }
    
    func asynSave(with news: News, complitionBlock: @escaping (Bool) -> ()) {
        let operationQueue = OperationQueue()
        operationQueue.addOperation { [weak self] in
            guard let strongSelf = self else {return}
            strongSelf.news.append(news)
            complitionBlock(true)
        }
        complitionBlock(false)
    }
    
    func syncGetAll() -> [News] {
        let newsArray = news.sorted(by: {$0.id < $1.id})
        return newsArray
    }
    
    func asynGetAll(complitionBlock: @escaping ([News]) -> ()) {
        let operationQueue = OperationQueue()
        operationQueue.addOperation { [weak self] in
            guard let strongSelf = self else {return}
            let newsArray = strongSelf.syncGetAll()
            complitionBlock(newsArray)
        }
    }
    
    func syncSearch(by id: Int) -> News? {
        let resultNews = news[id]
        return resultNews
        // вопрос по проверке
    }
    
    func asynSearch(by id: Int, complitionBlock: @escaping (News?) -> ()) {
        let operationQueue = OperationQueue()
        operationQueue.addOperation { [weak self] in
            guard let strongSelf = self else {return}
            let resultNews = strongSelf.news[id]
            complitionBlock(resultNews)
        }
        complitionBlock(nil)
    }
    
       
}

