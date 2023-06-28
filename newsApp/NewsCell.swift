//
//  NewsCell.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 28.06.2023.
//

import UIKit

class NewsCell: UITableViewCell {
    weak var viewController: MainTableViewController?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    // Другие элементы интерфейса, если необходимо
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Конфигурация ячейки
    }
}
