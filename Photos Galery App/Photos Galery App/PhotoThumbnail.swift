//
//  PhotoThumbnail.swift
//  Photos Galery App
//
//  Created by admin on 2/17/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class PhotoThumbnail: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    func setThumbnailImage(thumbnailImage: UIImage) {
        self.imgView.image=thumbnailImage
    }
}
