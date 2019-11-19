//
//  TopMenuViewController.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/11/13.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopMenuViewController: BaseViewController {
    @IBOutlet weak var menuMainView: TopMenuView!
    var secondViewController = SecondViewController()
}

// MARK: - Life cycle
extension TopMenuViewController {
    override func loadView() {
        super.loadView()
        menuMainView.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopMenuViewController:TopMenuViewDelegate {
    func didselectedRow(indexpath: IndexPath) {
        switch indexpath.row {
        case 0:
            transitionViewController(from: self, to: secondViewController)
        default:
            print("99")
        }
    }
    
    
}

// MARK: - method
extension TopMenuViewController {
    
}

