//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Martynas Kausas on 2/2/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class RepoCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    var repoDetails: GithubRepo! {
        didSet {
            titleLabel.text = repoDetails.name
            starLabel.text = "\(repoDetails.stars)"
            forkLabel.text = "\(repoDetails.forks)"
            authorLabel.text = repoDetails.ownerHandle
            descriptionLabel.text = repoDetails.description
        }
    }
    
}
