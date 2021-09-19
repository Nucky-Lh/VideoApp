//
//  Video.swift
//  VideoApp41.8
//
//  Created by Николай Лахов on 19.09.2021.
//

import Foundation
import UIKit

struct Video {
    let videoImage: UIImage!
    let videoTitle: String!
    let videoURL: URL!
    
   private enum VideoTitle: String {
        case videoOne = "Aladdin"
        case videoTwo = "Avez Vous"
        case videoThree = "The Kings Trumpet"
        case videoFour = "Popeye the Sailor Meets Aladdin and His Wonderfull Lamp"
    }
    
   private enum VideoUrl: String {
        case videoOne = "https://ia802609.us.archive.org/23/items/Aladdin_315/Aladdin_512kb.mp4"
        case videoTwo = "https://ia800604.us.archive.org/19/items/Avez-vousDjVu...LePlusPetitZooDuMonde/104_Le_Plus_Petit_Zoo_du_Monde.mp4"
        case videoThree = "https://ia800705.us.archive.org/28/items/TheSpiritOf43_56/The_Spirit_of__43_512kb.mp4"
        case videoFour = "https://ia800703.us.archive.org/30/items/Popeye_the_Sailor_Meets_Aladdin_and_His_Wonderful_Lamp/Popeye_-_Aladdin_and_His_Wonderful_Lamp_512kb.mp4"
    }
    
   static func fetchVideos() -> [Video] {
        let videoOne = Video(videoImage: #imageLiteral(resourceName: "v1"), videoTitle: VideoTitle.videoOne.rawValue, videoURL: URL(string: VideoUrl.videoOne.rawValue)!)
        let videoTwo = Video(videoImage: #imageLiteral(resourceName: "v2"), videoTitle: VideoTitle.videoTwo.rawValue, videoURL: URL(string: VideoUrl.videoTwo.rawValue)!)
        let videoThree = Video(videoImage: #imageLiteral(resourceName: "v3"), videoTitle: VideoTitle.videoThree.rawValue, videoURL: URL(string: VideoUrl.videoThree.rawValue)!)
        let videoFour = Video(videoImage: #imageLiteral(resourceName: "v4"), videoTitle: VideoTitle.videoFour.rawValue, videoURL: URL(string: VideoUrl.videoFour.rawValue)!)
        
        return [videoOne, videoTwo, videoThree, videoFour]
    }
    
}
