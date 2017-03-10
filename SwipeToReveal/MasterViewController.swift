//
//  MasterViewController.swift
//  SwipeToReveal
//
//  Created by Mark Wilkinson on 3/10/17.
//  Copyright © 2017 Mark Wilkinson. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let validLinkCell = tableView.dequeueReusableCell(withIdentifier: "LinkCell", for: indexPath) as? LinkTableViewCell {

            switch indexPath.row {
            case 0:
                validLinkCell.titleLabel?.text = "Original Link"
                validLinkCell.linkImageView.image = UIImage(named: "Link1")
                break
            case 1:
                validLinkCell.titleLabel?.text = "Toon Link"
                validLinkCell.linkImageView.image = UIImage(named: "Link2")
                break
            case 2:
                validLinkCell.titleLabel?.text = "BotW Link"
                validLinkCell.linkImageView.image = UIImage(named: "Link3")
                break
            default:
                validLinkCell.titleLabel?.text = ""
            }
                
            return validLinkCell
                
        }
        
        return UITableViewCell()
    }
}

