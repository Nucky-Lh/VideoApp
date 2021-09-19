//
//  TableVC.swift
//  VideoApp41.8
//
//  Created by Николай Лахов on 19.09.2021.
//

import UIKit

class TableVC: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageVideo: UIImageView!
    
    public var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    private func updateUI () {
        imageVideo.image = video.videoImage
        label.text = video.videoTitle
    }
    
}
