//
//  FriendsViewController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 17.05.2023.
//

import UIKit

class FriendsViewController: UIViewController {
    
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
        title = "Друзья"
        view.addSubview(tableView)
        setupNavigationController()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    // MARK: - objk & func
    
    private func setupNavigationController() {
        self.navigationItem.title = "Друзья"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showPhoto))
    }
    
    @objc private func showPhoto() {
        let photoController = storybordInstance.instantiateViewController(withIdentifier: "photoController")
        navigationController?.pushViewController(photoController, animated: true)
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
