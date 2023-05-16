//
//  FriendsDataSourceController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 17.05.2023.
//

import UIKit


extension FriendsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
    
    
}
