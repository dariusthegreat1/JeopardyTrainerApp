//
//  Category.swift
//  JeopardyTrainer
//
//  Created by Nick Haidari on 12/15/19.
//  Copyright © 2019 Nick Haidari. All rights reserved.
//

import Foundation


class Category {
    var id: Int
    var title: String
    var cluesCount: Int
    
    init(id: Int, title: String, cluesCount: Int) {
        self.id = id
        self.title = title
        self.cluesCount = cluesCount
    }
}
