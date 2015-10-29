//
//  NewsTableViewController.swift
//  GoogleNewsApiReader
//
//  Created by Jon Harlan on 10/28/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    var articles = [Article]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("newsCell", forIndexPath: indexPath)
//        look at specific article
        let article = articles[indexPath.row]
        print (articles)
//        show article title
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.publisher

        return cell
    }

}
