//
//  SignUpViewController.swift
//  4lesson2LayOut
//
//  Created by Aiturgan Kurmanbekova on 14/2/24.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let mainImageView = MakerView().uiImageMaker(image: .boy)
    
    private let whiteView = MakerView().uiViewMaker(backgroundColor: .white,
                                                    cornerRadius: 20,
                                                    maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])
    
    private let userStackView = MakerView().uiStackViewMaker(axis: .vertical)
    
    private let fullNameLabel = MakerView().uiLabelMaker(text: "Full Name")
    
    private let fullNameTF = MakerView().uiTextFieldMaker(placeholder: "Mehaat Junit")
    
    private let numberLabel = MakerView().uiLabelMaker(text: "Mobile Number")
    
    private let numberTF = MakerView().uiTextFieldMaker(placeholder: "+91 73733 73733")
    
    private let userNameLabel = MakerView().uiLabelMaker(text: "User Name")
    
    private let userNameTF = MakerView().uiTextFieldMaker(placeholder: "erp@mrg")
    
    private let emailLabel = MakerView().uiLabelMaker(text: "Email")
    
    private let emailTF = MakerView().uiTextFieldMaker(placeholder: "erp1253@gmail.com")
    
    private let passwordLabel = MakerView().uiLabelMaker(text: "Password")
    
    private let passwordTF = MakerView().uiTextFieldMaker(placeholder: "123456789")
    
    private let hideButton = MakerView().uiButtonMaker(title: nil,
                                                       image: .eye)
    
    private let confirmPswLabel = MakerView().uiLabelMaker(text: "Confirm Password")
    
    private let confirmPswTF = MakerView().uiTextFieldMaker(placeholder: "123456789")
    
    private let hhideButton = MakerView().uiButtonMaker(title: nil,
                                                        image: .eye)
    
    private let signUpButton = MakerView().uiButtonMaker(title: "Sign Up",
                                                         titleColor: .white,
                                                         image: nil,
                                                         backgroundColor: .blue,
                                                         cornerRadius: 12)
    
    private let bottomStackView = MakerView().uiStackViewMaker(axis: .horizontal)
    
    private let questionLabel = MakerView().uiLabelMaker(text: "Already have an Account?")
    
    private let signInButton = MakerView().uiButtonMaker(title: "Sign In",
                                                         titleColor: .systemBlue,
                                                         image: nil)
    
    private let errorLabel = MakerView().uiLabelMaker(text: "Please, fill in the Fills!",
                                                      textColor: .white)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupUI()
        error()
    }
    
    private func setupUI() {
        view.addSubview(mainImageView)
        NSLayoutConstraint.activate(
            [mainImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 29),
             mainImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
             mainImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             mainImageView.heightAnchor.constraint(equalToConstant: 240)
            ])
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate(
            [whiteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 192),
             whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        whiteView.addSubview(userStackView)
        NSLayoutConstraint.activate(
            [userStackView.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 40),
             userStackView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             userStackView.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
             userStackView.heightAnchor.constraint(equalToConstant: 430)
            ])
        
        userStackView.addArrangedSubview(fullNameLabel)
        userStackView.addArrangedSubview(fullNameTF)
        
        userStackView.addArrangedSubview(numberLabel)
        userStackView.addArrangedSubview(numberTF)
        
        userStackView.addArrangedSubview(userNameLabel)
        userStackView.addArrangedSubview(userNameTF)
        
        userStackView.addArrangedSubview(emailLabel)
        userStackView.addArrangedSubview(emailTF)
        
        userStackView.addArrangedSubview(passwordLabel)
        userStackView.addArrangedSubview(passwordTF)
        
        whiteView.addSubview(hideButton)
        NSLayoutConstraint.activate(
            [hideButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 567),
             hideButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -33),
             hideButton.heightAnchor.constraint(equalToConstant: 18),
             hideButton.widthAnchor.constraint(equalToConstant: 18)
            ])
        
        userStackView.addArrangedSubview(confirmPswLabel)
        userStackView.addArrangedSubview(confirmPswTF)
        
        whiteView.addSubview(hhideButton)
        NSLayoutConstraint.activate(
            [hhideButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 640),
             hhideButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -33),
             hhideButton.heightAnchor.constraint(equalToConstant: 18),
             hhideButton.widthAnchor.constraint(equalToConstant: 18)
            ])
        
        whiteView.addSubview(signUpButton)
        NSLayoutConstraint.activate(
            [signUpButton.topAnchor.constraint(equalTo: userStackView.bottomAnchor, constant: 40),
             signUpButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 80),
             signUpButton.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -80),
             signUpButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        whiteView.addSubview(bottomStackView)
        NSLayoutConstraint.activate(
            [bottomStackView.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -50),
             bottomStackView.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             bottomStackView.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
             bottomStackView.heightAnchor.constraint(equalToConstant: 16)
            ])
        bottomStackView.addArrangedSubview(questionLabel)
        bottomStackView.addArrangedSubview(signInButton)
        
        
        
        signUpButton.addTarget(self, action: #selector(signUpBtnTppd), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(signInBtnTppd), for: .touchUpInside)
        hideButton.addTarget(self, action: #selector(hide), for: .touchUpInside)
        hhideButton.addTarget(self, action: #selector(hhide), for: .touchUpInside)
    }
    
    
    
    private func error() {
        view.addSubview(errorLabel)
        NSLayoutConstraint.activate(
            [errorLabel.topAnchor.constraint(equalTo: userStackView.bottomAnchor, constant: 5),
             errorLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             errorLabel.heightAnchor.constraint(equalToConstant: 15)
            ])
    }
    
    
    @objc private func signUpBtnTppd() {
        guard let nameText = fullNameTF.text, !nameText.isEmpty else {
            fullNameLabel.text = "Enter your full name!"
            fullNameLabel.textColor = .red
            fullNameTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        guard let numberText = numberTF.text, !numberText.isEmpty else {
            numberLabel.text = "Enter your number!"
            numberLabel.textColor = .red
            numberTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        guard let userNameText = userNameTF.text, !userNameText.isEmpty else {
            userNameLabel.text = "Enter your name!"
            userNameLabel.textColor = .red
            userNameTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        guard let emailText = emailTF.text, !emailText.isEmpty else {
            emailLabel.text = "Enter your email!"
            emailLabel.textColor = .red
            emailTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        guard let passwordText = passwordTF.text, passwordText.count >= 6 else {
            passwordLabel.text = "Please, enter 6 or more symbols!"
            passwordLabel.textColor = .red
            passwordTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        guard let confirmText = confirmPswTF.text, confirmText == passwordText else {
            confirmPswLabel.text = "Confirm your password!"
            confirmPswLabel.textColor = .red
            confirmPswTF.layer.borderColor = UIColor.red.cgColor
            
            return
        }
        
        let vc = SuccessVC()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc private func signInBtnTppd(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @objc private func hide() {
        hideButton.tintColor = .black
        passwordTF.text = "******"
    }
    
    @objc private func hhide() {
        hhideButton.tintColor = .black
        confirmPswTF.text = "******"
    }
    
}
    


