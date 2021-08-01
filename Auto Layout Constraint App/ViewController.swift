//
//  ViewController.swift
//  Auto Layout Constraint App
//
//  Created by Nuri Chun on 7/31/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        
        return view
    }()

    private let containerView2: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureUI()
    }
    
    private func configureUI() {
        view.addSubview(containerView)
        containerView.addSubview(containerView2)
        
        containerView.anchorDimensions(size: .init(width: 200, height: 200))
        containerView.centerXY()
        containerView2.anchorDimensions(size: .init(width: 50, height: 50))
        containerView2.centerXY()
    }
}

