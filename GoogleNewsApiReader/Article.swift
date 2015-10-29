//
//  Article.swift
//  GoogleNewsApiReader
//
//  Created by Jon Harlan on 10/28/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import Foundation

class Article {
    var title:String?
    var publisher:String?
//    var relatedStories:NSArray
    
    init(title:String, publisher:String) { //relatedStories:NSArray
        self.title = title
        self.publisher = publisher
//        self.relatedStories = relatedStories
    }
    
}