//
//  TopViewController.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/10/23.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework

// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var mainView: TopMainView!
    
    var slideArray = [UIImage]()
    
    let slidePic0 = UIImage(named: "hikakin")
    let slidePic1 = UIImage(named: "fischers")
    let slidePic2 = UIImage(named: "tokaionair")
    
    var timer1 = Timer()
    
    var countUp = 0
      
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        
        mainView.delegate = self
        slideImageSet()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController:TopMainViewDelegate{
    func menuButton(_ sender: UIButton) {
        let topMenuViewController = TopMenuViewController()
        transitionViewController(from: self, to: topMenuViewController)
        animatorManager.navigationType = . slide_pop
    }
    
    func menberButton(_ sender: UIButton) {
        let topMenberViewController = TopMenberViewController()
        transitionViewController(from: self, to: topMenberViewController)
        animatorManager.navigationType = .slide_pop
    }
    
}
    
// MARK: - method
extension TopViewController {
    
    func slideImageSet(){
    
    slideArray = [slidePic0!,slidePic1!,slidePic2!]
    
    timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: { (timer) in
            
        if (self.countUp > 2){
            self.mainView.slideImageView.image = UIImage(named: "hikakin")
            
        }else{
            self.mainView.slideImageView.image = self.slideArray[self.countUp]
        }
        self.countUp = self.countUp + 1
        })
    }
}

