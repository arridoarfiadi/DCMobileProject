//
//  feedCellTableViewCell.swift
//  DiversityCenter
//
//  Created by Arrido Arfiadi on 6/16/18.
//  Copyright © 2018 Arrido Arfiadi. All rights reserved.
//

import UIKit

class feedCellTableViewCell: UITableViewCell {


    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var date: UILabel!
    var link: String!
    
    
    var postFeed: Feed!{
        didSet{
            self.message.text = postFeed.getMessage()
            self.date.text = postFeed.getTime()
            self.link = postFeed.getLink()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
