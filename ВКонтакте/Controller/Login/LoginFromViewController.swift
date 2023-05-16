//
//  LoginFromViewController.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 15.05.2023.
//

import UIKit

class LoginFromViewController: UIViewController {
    
    //MARK: - UI
    
    lazy var scrollView = UIScrollView()
    lazy var imageTitle = UIImageView()
    lazy var titleVK = UILabel()
    lazy var loginTextField = UITextField()
    lazy var passwordTextField = UITextField()
    lazy var buttonInput = UIButton(type: .system)
    
    
    override func loadView() {
        super.loadView()
        addUI()
        createUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardGesture()
        buttonInput.addTarget(self, action: #selector(inputButtonPressed), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    private func addUI() {
        view.addSubview(scrollView)
        scrollView.addSubview(imageTitle)
        scrollView.addSubview(titleVK)
        scrollView.addSubview(loginTextField)
        scrollView.addSubview(passwordTextField)
        scrollView.addSubview(buttonInput)
    }
    
    
    // MARK: - objc && func
    
    
    @objc private func inputButtonPressed(_ sender: Any) {
        guard let login = loginTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        if login == "Admin" && password == "123456" {
            print("Успешная авторизация")
        } else {
            print("Неуспешная автрозация")
        }
    }
    
    
    
    private func hideKeyboardGesture() {
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(hideKeyboardGesture)
    }
    
    
    //Keyboard appears
    
    @objc func keyboardWasShown(notification: Notification) {
        // size
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        self.scrollView.contentInset = contentInsets
        scrollView.scrollIndicatorInsets = contentInsets
    }
    
    // Keyboard disappears
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        // Indentation at the scrollView, 0
        let contentInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInsets
    }
    
    @objc func hideKeyboard() {
        self.scrollView.endEditing(true)
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
