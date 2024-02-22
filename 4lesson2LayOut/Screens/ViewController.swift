//
//  ViewController.swift
//  4lesson2LayOut
//
//  Created by Aiturgan Kurmanbekova on 14/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainImage = MakerView().uiImageMaker(image: .boy)
    
    
    private let labelStackView = MakerView().uiStackViewMaker(axis: .vertical)
    
    private let firstLabel = MakerView().uiLabelMaker(text: "Welcome Back",
                                                           textColor: .white,
                                                           size: 34,
                                                           weight: .bold)
    
    private let secondLabel = MakerView().uiLabelMaker(text: "Sign in to continue",
                                                            textColor: .white,
                                                            size: 20,
                                                            weight: .light)
    
    private let whiteView = MakerView().uiViewMaker(backgroundColor: .white,
                                                         cornerRadius: 30,
                                                         maskedCorners: [.layerMaxXMinYCorner, .layerMinXMinYCorner])
    
    private let emailLabel = MakerView().uiLabelMaker(text: "Employee Id / Email")
    
    private let emailTF = MakerView().uiTextFieldMaker(placeholder: "erp1253@gmail.com")
    
    private let passwordLabel = MakerView().uiLabelMaker(text: "Password")
    
    private let passwordTF = MakerView().uiTextFieldMaker(placeholder: "1234656789")
    
    private let forgotPswBtn = MakerView().uiButtonMaker(title: "Forgot Password?",
                                                         titleColor: .systemBlue)
    
    private let checkButton = MakerView().uiButtonMaker(title: nil,
                                                        image: .check,
                                                        tintColor: .white,
                                                        borderColor: UIColor.black.cgColor)
    
    private let rememberLabel = MakerView().uiLabelMaker(text: "Remember Me",
                                                         textColor: .black,
                                                         size: 18)
    
    private let signInBtn = MakerView().uiButtonMaker(title: "Sign In",
                                                      titleColor: .white,
                                                      tintColor: .white,
                                                      backgroundColor: .blue,
                                                      cornerRadius: 12)
    
    private let newAccountLabel = MakerView().uiLabelMaker(text: "Don’t have an Account?")
    
    
    private let signUpBtn = MakerView().uiButtonMaker(title: "Sign Up",
                                                      titleColor: .systemBlue)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(mainImage)
        NSLayoutConstraint.activate(
            [mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 39),
             mainImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             mainImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             mainImage.heightAnchor.constraint(equalToConstant: 250)
            ])
        
        
        view.addSubview(labelStackView)
        NSLayoutConstraint.activate(
            [labelStackView.topAnchor.constraint(equalTo: mainImage.bottomAnchor),
             labelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
             labelStackView.heightAnchor.constraint(equalToConstant: 60)
            ])
        
        labelStackView.addArrangedSubview(firstLabel)
        labelStackView.addArrangedSubview(secondLabel)
        
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate(
            [whiteView.topAnchor.constraint(equalTo: labelStackView.bottomAnchor, constant: 8),
             whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             whiteView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 3/5),
             whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        whiteView.addSubview(emailLabel)
        NSLayoutConstraint.activate(
            [emailLabel.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 43),
             emailLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             emailLabel.heightAnchor.constraint(equalToConstant: 15)
            ])
        
        whiteView.addSubview(emailTF)
        NSLayoutConstraint.activate(
            [emailTF.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 13),
             emailTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             emailTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
             emailTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        whiteView.addSubview(passwordLabel)
        NSLayoutConstraint.activate(
            [passwordLabel.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 25),
             passwordLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             passwordLabel.heightAnchor.constraint(equalToConstant: 15)
            ])
        
        whiteView.addSubview(passwordTF)
        NSLayoutConstraint.activate(
            [passwordTF.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
             passwordTF.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             passwordTF.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
             passwordTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        whiteView.addSubview(forgotPswBtn)
        NSLayoutConstraint.activate(
            [forgotPswBtn.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 10),
             forgotPswBtn.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -23),
             forgotPswBtn.heightAnchor.constraint(equalToConstant: 20)
            ])
        
        whiteView.addSubview(checkButton)
        NSLayoutConstraint.activate(
            [checkButton.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 50),
             checkButton.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             checkButton.heightAnchor.constraint(equalToConstant: 24),
             checkButton.widthAnchor.constraint(equalToConstant: 24)
            ])
        
        whiteView.addSubview(rememberLabel)
        NSLayoutConstraint.activate(
            [rememberLabel.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 50),
             rememberLabel.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 5),
             rememberLabel.heightAnchor.constraint(equalToConstant: 24)
            ])
        
        whiteView.addSubview(signInBtn)
        NSLayoutConstraint.activate(
            [signInBtn.topAnchor.constraint(equalTo: rememberLabel.bottomAnchor, constant: 60),
             signInBtn.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 96),
             signInBtn.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -96),
             signInBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        whiteView.addSubview(newAccountLabel)
        NSLayoutConstraint.activate(
            [newAccountLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
             newAccountLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             newAccountLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        whiteView.addSubview(signUpBtn)
        NSLayoutConstraint.activate(
            [signUpBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -70),
             signUpBtn.leadingAnchor.constraint(equalTo: newAccountLabel.trailingAnchor, constant: 5),
             signUpBtn.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        
        
        signInBtn.addTarget(nil, action: #selector(signInBtnTppd), for: .touchUpInside)
        signUpBtn.addTarget(nil, action: #selector(signUpBtnTppd), for: .touchUpInside)
        forgotPswBtn.addTarget(nil, action: #selector(forgotBtnTppd), for: .touchUpInside)
        checkButton.addTarget(nil, action: #selector(checkBtnTppd), for: .touchUpInside)
    }
    
    

    @objc func  signUpBtnTppd() {
        let vc = SignUpViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @objc func signInBtnTppd() {
        guard let emailText = emailTF.text, !emailText.isEmpty else {
            emailLabel.text = "Please, enter your email!"
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
        if checkButton.tintColor == .systemBlue {
            let vc = SuccessVC()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc private func forgotBtnTppd() {
        let vc = ThirdViewController()
        let text = emailTF.text
        vc.userNameLabel.text = text
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func checkBtnTppd() {
        checkButton.tintColor = .systemBlue
    }
    
        
}
