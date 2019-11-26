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
    @IBOutlet weak var headerView: TopHeaderView!
    @IBOutlet weak var mainView: TopMainView!
    var secondViewController = SecondViewController()
    let topHedderView : [TopHeaderView] = []
   
}

// MARK: - Life cycle
extension TopMenuViewController {
    override func loadView() {
        super.loadView()
        menuMainView.delegate = self
        headerView.delegate = self
        mainViewEfect()
//        hedderEffect()
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
extension TopMenuViewController:TopHeaderViewDelegate{
    func backButton(_ sender: UIButton) {
        let topViewController = TopViewController()
        transitionViewController(from: self, to: topViewController)
        animatorManager.navigationType = .slide_push
    }
}

// MARK: - method
extension TopMenuViewController {
    func mainViewEfect(){
        let blurEffect = UIBlurEffect(style: .regular)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = self.mainView.frame
        self.mainView.addSubview(visualEffectView)
        
}
    func hedderEffect(){
        let blurEffect = UIBlurEffect(style: .regular)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = self.headerView.frame
        self.headerView.addSubview(visualEffectView)
    }
  }
