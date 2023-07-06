//
//  NewsDetailViewController.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 28.06.2023.
//

import UIKit

class NewsDetailViewController: UIViewController {
    
    var newsDescription: String?

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(newsDescription)
        
//        if newsDescription != nil {
//            label.text = newsDescription
//        }
    }


}
