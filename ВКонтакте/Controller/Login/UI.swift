//
//  UI.swift
//  ВКонтакте
//
//  Created by Михаил Чертов on 15.05.2023.
//

import UIKit

extension LoginFromViewController {
    
    func createUI() {
        
        createScrollView()
        createImage()
        createTitle()
        createConstraints()
        createLoginTextField()
        createPasswordTextField()
        createInputButton()
    }
    
    
    // MARK: - Create UI
    
    private func createScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = true
        scrollView.isDirectionalLockEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = UIColor(hex: "FAFAFA")
    }
    
    
    private func createImage() {
        let logoImage = UIImage(named: "logo")
        imageTitle.translatesAutoresizingMaskIntoConstraints = false
        imageTitle.contentMode = .scaleAspectFit
        imageTitle.image = logoImage
    }
    
    
    private func createTitle() {
        titleVK.translatesAutoresizingMaskIntoConstraints = false
        titleVK.text = "Вход ВКонтакте"
        titleVK.font = UIFont.boldSystemFont(ofSize: 25)
    }
    
    
    private func createLoginTextField() {
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.borderStyle = .roundedRect
        loginTextField.backgroundColor = UIColor(hex: "EEF0F1")
        let placeholder = NSAttributedString(string: "Телефон или почта",
                                                  attributes:
                                                    [.foregroundColor: UIColor.systemGray,
                                                     .font: UIFont.systemFont(ofSize: 14)
                                                    ])
        loginTextField.attributedPlaceholder = placeholder
    }
    
    
    private func createPasswordTextField() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.backgroundColor = UIColor(hex: "EEF0F1")
        let placeholder = NSAttributedString(string: "Пароль",
                                                  attributes:
                                                    [.foregroundColor: UIColor.systemGray,
                                                     .font: UIFont.systemFont(ofSize: 14)
                                                    ])
        passwordTextField.attributedPlaceholder = placeholder
    }
    
    
    private func createInputButton() {
        buttonInput.setTitle("Войти", for: .normal)
        buttonInput.translatesAutoresizingMaskIntoConstraints = false
        buttonInput.backgroundColor = UIColor(hex: "457EDA")
        buttonInput.tintColor = .white
        buttonInput.layer.cornerRadius = 7
    }
    
    
    // MARK: - Constraints
    
    private func createConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            imageTitle.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 170),
            imageTitle.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            imageTitle.widthAnchor.constraint(equalToConstant: 60),
            imageTitle.heightAnchor.constraint(equalToConstant: 60),
            
            
            titleVK.topAnchor.constraint(equalTo: imageTitle.bottomAnchor, constant: 20),
            titleVK.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            
            
            loginTextField.topAnchor.constraint(equalTo: titleVK.bottomAnchor, constant: 20),
            loginTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            loginTextField.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor, constant: 10),
            loginTextField.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor, constant: 10),
            loginTextField.heightAnchor.constraint(equalToConstant: 40),
            
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 5),
            passwordTextField.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor, constant: 10),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            
            buttonInput.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            buttonInput.centerXAnchor.constraint(equalTo: scrollView.contentLayoutGuide.centerXAnchor),
            buttonInput.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor, constant: 10),
            buttonInput.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor, constant: 10),
            buttonInput.heightAnchor.constraint(equalToConstant: 40),
            buttonInput.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: 20)

            ])
        
    }
    
    
}
