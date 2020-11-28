//
//  MenuViewController.swift
//  DemoUITabBarController
//
//  Created by Taof on 11/28/20.
//

import UIKit

class MenuViewController: UIViewController {

    let label: UILabel = {
        let label = UILabel()
        label.text = "Menu"
        label.font = UIFont.systemFont(ofSize: 40)
        label.textAlignment = .center
        return label
    }()
    
    let widthScreen = UIScreen.main.bounds.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.frame = CGRect(x: 0, y: 0, width: widthScreen, height: 100)
        label.center.y = view.center.y
    }

}
