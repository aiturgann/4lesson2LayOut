//
//  ThirdViewController.swift
//  4lesson2LayOut
//
//  Created by Aiturgan Kurmanbekova on 16/2/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let imageView = MakerView().uiImageMaker(image: .image)
    
    var userNameLabel = MakerView().uiLabelMaker(text: "",
                                                 textColor: .white,
                                                 size: 20,
                                                 backgroundColor: .systemGray4,
                                                 textAlignment: .center)
    
    private let whiteView = MakerView().uiViewMaker(backgroundColor: .white,
                                                    cornerRadius: 20,
                                                    maskedCorners: [.layerMinXMinYCorner, .layerMaxXMinYCorner])
    
    private let verticalSV = MakerView().uiStackViewMaker(axis: .vertical)
    
    private let newPasswordLabel = MakerView().uiLabelMaker(text: "New Password")
    
    private let newPswTF = MakerView().uiTextFieldMaker(placeholder: "123456789")
    
    private let confirmPswLabel = MakerView().uiLabelMaker(text: "Confirm Password")
    
    private let confirmPswTF = MakerView().uiTextFieldMaker(placeholder: "123456789")
    
    private let submitButton = MakerView().uiButtonMaker(title: "Submit",
                                                         titleColor: .white,
                                                         image: nil,
                                                         backgroundColor: .systemGreen,
                                                         cornerRadius: 15)
    
    private let errorLabel = MakerView().uiLabelMaker(text: "The values are not equal!",
                                                      textColor: .white)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupUI()
        error()
    }
    
    private func setupUI() {
        view.addSubview(imageView)
        NSLayoutConstraint.activate(
            [imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
             imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             imageView.heightAnchor.constraint(equalToConstant: 148),
             imageView.widthAnchor.constraint(equalToConstant: 148)
            ])
        
        view.addSubview(userNameLabel)
        NSLayoutConstraint.activate(
            [userNameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40),
             userNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
             userNameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
             userNameLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
        
        view.addSubview(whiteView)
        NSLayoutConstraint.activate(
            [whiteView.topAnchor.constraint(equalTo: view.topAnchor, constant: 334),
             whiteView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             whiteView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
             whiteView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        view.addSubview(verticalSV)
        NSLayoutConstraint.activate(
            [verticalSV.topAnchor.constraint(equalTo: whiteView.topAnchor, constant: 100),
             verticalSV.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             verticalSV.trailingAnchor.constraint(equalTo: whiteView.trailingAnchor, constant: -41),
             verticalSV.heightAnchor.constraint(equalToConstant: 150)
            ])
        
        verticalSV.addArrangedSubview(newPasswordLabel)
        verticalSV.addArrangedSubview(newPswTF)
        
        verticalSV.addArrangedSubview(confirmPswLabel)
        verticalSV.addArrangedSubview(confirmPswTF)
        
        view.addSubview(submitButton)
        NSLayoutConstraint.activate(
            [submitButton.bottomAnchor.constraint(equalTo: whiteView.bottomAnchor, constant: -150),
             submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             submitButton.heightAnchor.constraint(equalToConstant: 35),
             submitButton.widthAnchor.constraint(equalToConstant: 95)
            ])
        submitButton.addTarget(nil, action: #selector(submitBtnTppd), for: .touchUpInside)
        
        passwordValidate(password: newPswTF, returnPassword: confirmPswTF)
        
    }
    
    private func error() {
        view.addSubview(errorLabel)
        NSLayoutConstraint.activate(
            [errorLabel.topAnchor.constraint(equalTo: verticalSV.bottomAnchor, constant: 5),
             errorLabel.leadingAnchor.constraint(equalTo: whiteView.leadingAnchor, constant: 23),
             errorLabel.heightAnchor.constraint(equalToConstant: 15)
            ])
    }
    
    @objc private func submitBtnTppd() {
        if newPswTF.text == confirmPswTF.text {
            navigationController?.popToRootViewController(animated: true)
        } else {
            errorLabel.textColor = .red
        }
    }
    
    private func passwordValidate(password: UITextField, returnPassword: UITextField) {
        if password.text?.count != 0, returnPassword.text?.count != 0 && password.text == returnPassword.text {
            submitBtnTppd()
        }
    }
    
    
}
