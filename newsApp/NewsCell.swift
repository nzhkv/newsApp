//
//  NewsCell.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 28.06.2023.
//

import UIKit

class NewsCell: UITableViewCell {
    @IBOutlet weak var news: UILabel!
    @IBOutlet weak var sourse: UILabel!
    let info: String = "info" // del leter
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Конфигурация ячейки
    }
}
