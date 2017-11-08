//
//  ItemCell.swift
//  RvDownloadManager
//
//  Created by Ravi Vora on 08/11/17.
//  Copyright © 2017 Ravi Vora. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    func setItemListCellDetails(imageURL:String) {
        
        DispatchQueue.main.async {
            DownloadManager.sharedManager.downloadImage(imageURL,placeHolderImage: UIConstant.Images.profileImageIcon, completion: { (image:UIImage?) -> Void in
                
                self.itemImageView.image = image
            })
        }
    }
}
