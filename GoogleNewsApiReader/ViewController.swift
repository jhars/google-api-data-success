//
//  ViewController.swift
//  GoogleNewsApiReader
//
//  Created by Blake Barrett on 10/26/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var activityWheel: UIActivityIndicatorView!
    var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        activityWheel.startAnimation()

        let url = "http://ajax.googleapis.com/ajax/services/search/news"
        let parameters = ["v": "1.0", "q": "Barack Obama"]

        Alamofire.request(.GET, url, parameters: parameters)
            .responseJSON { response in
                // gets the json
                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
                    
                    //GET list of Single Articles
                    let articleDictionaries = JSON.valueForKey("responseData")?.valueForKey("results") as! [NSDictionary]
                    
                    //extracts SPECIFIC DATA we want
                    self.articles = articleDictionaries.map {
                        Article(title: $0["titleNoFormatting"] as! String, publisher: $0["publisher"] as! String)
                    }
                    print(self.articles[1].publisher)
                    
                    self.performSegueWithIdentifier("showNewsSegue", sender: nil)
                }
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let newsTVC = segue.destinationViewController as! NewsTableViewController
        newsTVC.articles = articles
    }


}

