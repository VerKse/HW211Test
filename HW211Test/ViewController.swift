//
//  ViewController.swift
//  HW211Test
//
//  Created by Вера Ксенофонтова on 02.12.2020.
//

import UIKit

class ViewController: UIViewController {

    let redView: UIView = {
        var newView = UIView()
        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.backgroundColor = .red
        return newView
    }()
    
    
    let greenView: UIView = {
        var newView = UIView()
        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.backgroundColor = .green
        return newView
    }()
    
    let stackView: UIStackView = {
        let newStack = UIStackView()
        newStack.translatesAutoresizingMaskIntoConstraints = false
        newStack.axis = .vertical
        newStack.distribution = .fill
        return newStack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stackView.addArrangedSubview(redView)
        stackView.addArrangedSubview(greenView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor),
            stackView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor),
            
            redView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.5),
            redView.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            
            greenView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.5),
            greenView.widthAnchor.constraint(equalTo: stackView.widthAnchor)

        ])
    }


}

