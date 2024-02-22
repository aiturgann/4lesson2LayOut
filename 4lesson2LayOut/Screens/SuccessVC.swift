//
//  SuccessVC.swift
//  4lesson2LayOut
//
//  Created by Aiturgan Kurmanbekova on 16/2/24.
//

import UIKit

class SuccessVC: UIViewController {
    
    private let successImage = MakerView().uiImageMaker(image: .success)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(successImage)
        NSLayoutConstraint.activate(
            [successImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             successImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
             successImage.heightAnchor.constraint(equalToConstant: 235),
             successImage.widthAnchor.constraint(equalToConstant: 183.5)
            ])
    }

}
