//
//  LinkTableViewCell.swift
//  SwipeToReveal
//
//  Created by Mark Wilkinson on 3/10/17.
//  Copyright © 2017 Mark Wilkinson. All rights reserved.
//

import UIKit

class LinkTableViewCell: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var linkImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var roundedView: UIView! {
        didSet {
            roundedView.layer.cornerRadius = 5
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.frame = self.bounds
        self.scrollView.contentSize = self.scrollView.bounds.size
        self.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 100)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if (scrollView.contentOffset.x < 0) {
            scrollView.contentOffset = CGPoint()
        }
    }
}
