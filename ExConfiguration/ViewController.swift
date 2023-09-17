//
//  ViewController.swift
//  ExConfiguration
//
//  Created by 김종권 on 2023/09/17.
//

import UIKit

class ViewController: UIViewController {
    var configs = [
        UIButton.Configuration.plain(),
        .tinted(),
        .gray(),
        .filled(),
        .borderless(),
        .bordered(),
        .borderedTinted(),
        .borderedProminent()
    ]
    var names = [
        "plain",
        "tinted",
        "gray",
        "filled",
        "borderless",
        "bordered",
        "borderedTinted",
        "borderedProminen"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
        configs
            .enumerated()
            .forEach { i, config in
                var config = config
                config.title = "\(i) button " + "(" + names[i] + ")"
                config.subtitle = "subtitle"
                config.image = UIImage(systemName: "house")
                
                if i == configs.count - 1 {
                    config.imagePadding = 8
                    config.titlePadding = 12
//                    config.showsActivityIndicator = true
                }
                
                let button = UIButton(configuration: config)
                stackView.addArrangedSubview(button)
            }
    }
}

