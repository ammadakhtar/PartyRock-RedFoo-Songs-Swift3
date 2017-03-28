//
//  PartyCell.swift
//  PartyRock
//
//  Created by Ammad on 26/01/2017.
//  Copyright © 2017 Ammad. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var VideoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    func updateUI(partyRock:PartyRock) {
        
    VideoTitle.text = partyRock.videoTitle
    
    let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
                
            }
        }
        
        
        
    }

}
