//
//  TabBarViewController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 18.05.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var friendsController = storyboardInstance.instantiateViewController(withIdentifier: "friendsController")
        let groupsController = storyboardInstance.instantiateViewController(withIdentifier: "myGroupsController")
        
        friendsController.title = "Друзья"
        groupsController.title = "Сообщества"
        modalPresentationStyle = .automatic
        
        setViewControllers([friendsController, groupsController], animated: false)
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
