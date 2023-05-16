//
//  MyGroupsViewController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 17.05.2023.
//

import UIKit

class MyGroupsViewController: UIViewController {
    
    let storybordInstance = UIStoryboard(name: "Main", bundle: nil)
    
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Сообщества"
        view.addSubview(tableView)
        
        setupNavigationController()
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    //MARK: - objk & func
    
    private func setupNavigationController() {
        self.navigationItem.title = "Сообщества"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addGroup))
    }
    
    
    @objc private func addGroup() {
        let allGroupsController = storybordInstance.instantiateViewController(withIdentifier: "allGroupsController")
        navigationController?.pushViewController(allGroupsController, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
