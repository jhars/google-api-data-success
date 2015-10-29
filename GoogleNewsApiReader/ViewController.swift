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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // sets up variables we need to form our request:
        let url = "http://ajax.googleapis.com/ajax/services/search/news"
        let parameters = ["v": "1.0", "q": "Barack Obama"]
        // requests the data and handles response
        Alamofire.request(.GET, url, parameters: parameters)
            .responseJSON { response in
                // gets the json
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

