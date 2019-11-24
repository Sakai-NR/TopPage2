//
//  TopMenuTableViewCell.swift
//  Top2
//
//  Created by 酒井典昭 on 2019/11/13.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMenuTableViewCellDelegate: NSObjectProtocol{
    
}

extension TopMenuTableViewCellDelegate {
    
}
// MARK: - Property
class TopMenuTableViewCell: BaseTableViewCell {
    weak var delegate: TopMenuTableViewCellDelegate? = nil
    @IBOutlet weak var menuLabel: UILabel!
}

// MARK: - Life cycle
extension TopMenuTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
//    let blurEffect = UIBlurEffect(style: .light)
//        let visualEffectView = UIVisualEffectView(effect: blurEffect)
//        visualEffectView.effect = self.view.frame
        
        
    }
}

// MARK: - Protocol
extension TopMenuTableViewCell {
    
}

// MARK: - method
extension TopMenuTableViewCell {
    
}

