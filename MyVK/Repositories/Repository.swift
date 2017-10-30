//
//  Repository.swift
//  MyVK
//
//  Created by Дамир Зарипов on 29.10.17.
//  Copyright © 2017 itisioslab. All rights reserved.
//

import Foundation

protocol Repository {
    associatedtype T
    
    func synsSave(with: T)
    func asynSave(with: T, complitionBlock: @escaping (Bool) -> ())
    func syncGetAll(with: T)
    func asynGetAll(with: T)
    func syncSearch(with: T)
    func asynSearch(with: T, complitionBlock: @escaping (Bool) -> ())
 }
