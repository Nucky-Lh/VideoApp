//
//  ViewController.swift
//  VideoApp41.8
//
//  Created by Николай Лахов on 19.09.2021.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
    let videoContent: [Video] = Video.fetchVideos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UINib(nibName: "TableVC", bundle: nil), forCellReuseIdentifier: "TableVC")
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableVC", for: indexPath) as? TableVC else { return UITableViewCell()}
        let currentVideo = videoContent[indexPath.row]
        cell.video = currentVideo
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let currentVideo = videoContent[indexPath.row]
        let player = AVPlayer(url: currentVideo.videoURL)
        let playerControll = AVPlayerViewController()
        playerControll.player = player
        playerControll.allowsPictureInPicturePlayback = true
        playerControll.player?.play()
        
        present(playerControll, animated: true, completion: nil)
    }
    
}
