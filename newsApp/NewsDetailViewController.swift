//
//  NewsDetailViewController.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 28.06.2023.
//

import UIKit

class NewsDetailViewController: UIViewController {
    
    var newsDescription: String = " "

    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateNewsDescription(withText: newsDescription)
    }
    
    private func updateNewsDescription(withText text: String) {
        label.text = text
    }


}
