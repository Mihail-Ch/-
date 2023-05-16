//
//  AllGroupsViewController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 17.05.2023.
//

import UIKit

class AllGroupsViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        self.navigationController?.title = "Все сообщества"

    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.bounds = view.frame
    }
    
    
    // MARK: - objk & func
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
