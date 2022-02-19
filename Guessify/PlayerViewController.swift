//
//  PlayerViewController.swift
//  Guessify
//
//  Created by Oğuzhan KERTMEN on 17.02.2022.
//

import UIKit
import AVFoundation

class PlayerViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    public var position: Int = 0
    public var categories:  [Category] = []
    
    @IBOutlet var holder: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if holder.subviews.count == 0 {
            configure()
        }
        
    }
    
    func configure (){
        //set up player
        
        //set up user interface elements
        
    }
}
