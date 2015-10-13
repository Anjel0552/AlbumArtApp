//
//  AlbumDetailViewController.swift
//  AlbumArt
//
//  Created by Anjel Villafranco on 10/13/15.
//  Copyright © 2015 Anjel Villafranco. All rights reserved.
//

import UIKit

class AlbumDetailViewController: UIViewController {
    
    var albumInfo: Album! 
    
    @IBOutlet weak var albumImageView: UIImageView!

    @IBOutlet weak var tracksNameLabel: UITableView!
    
    @IBOutlet weak var albumNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        albumNameLabel.text = albumInfo.albumName
        albumImageView.image = albumInfo.albumImage ?? albumInfo.getImage()
        albumImageView.contentMode = .ScaleAspectFill
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
