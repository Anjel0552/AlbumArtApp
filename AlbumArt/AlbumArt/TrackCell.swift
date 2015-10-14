//
//  TrackCell.swift
//  AlbumArt
//
//  Created by Anjel Villafranco on 10/13/15.
//  Copyright © 2015 Anjel Villafranco. All rights reserved.
//

import UIKit

import SVGPlayButton 

class TrackCell: UITableViewCell {

        @IBOutlet weak var trackNameLabel: UILabel!
        
        @IBOutlet weak var playButton: SVGPlayButton!
        
        @IBAction func pressedPlayButton(sender: SVGPlayButton) {
            
            print("pressed")
            
            
        }
        override func awakeFromNib() {
            
            
            //runs after loaded in storyboard
            
            print(playButton)
            
            playButton.willPlay = { self.willPlayHandler() }
            playButton.willPause = { self.willPauseHandler() }
            playButton.progressTrackColor = UIColor.lightGrayColor()
            playButton.progressColor = UIColor.orangeColor()
            playButton.playColor = UIColor.redColor()
            playButton.pauseColor = UIColor.orangeColor()
            
        }
        
        private func willPlayHandler() {
            print("willPlay")
        }
        
        private func willPauseHandler() {
            print("willPause")
        }
    
}