//
//  MainTableViewController.swift
//  newsApp
//
//  Created by Nikolay Zhukov on 27.06.2023.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    private var news: News = News(totalResults: 0, articles: [])
    private var networkManager = NetworkManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchNews()
    }
    
    private func fetchNews() {
        networkManager.fetchNews { [weak self] (news) in
            DispatchQueue.main.async {
                if let news = news {
                    self?.news = news
                    self?.tableView.reloadData()
                } else {
                    print("some error")
                }
            }
        }
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.articles.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCell
        let currentNews = news.articles[indexPath.row]
        cell.news.text = currentNews.description
        cell.sourse.text = currentNews.author
        
        
        
//        var content = cell.defaultContentConfiguration()
//        content.text = currentNews.title
//        content.secondaryText = currentNews.author
//        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let news = news.articles[indexPath.row]

        // Создаем экземпляр NewsDetailViewController
//        let detailViewController = NewsDetailViewController()
//        detailViewController.newsDescription = news
//        detailViewController.newsDescription = "222222"

        // Отображаем контроллер с полным описанием новости
//        navigationController?.pushViewController(detailViewController, animated: true)
//        performSegue(withIdentifier: "example", sender: nil)
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
