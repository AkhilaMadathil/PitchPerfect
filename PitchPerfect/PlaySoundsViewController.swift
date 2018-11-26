//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by MAKL on 22/11/18.
//  Copyright © 2018 Akhila. All rights reserved.
//

import UIKit

class PlaySoundsViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var snailButton: UIButton!
    @IBOutlet weak var chipmunkButton: UIButton!
    @IBOutlet weak var rabbitButton: UIButton!
    @IBOutlet weak var vaderButton: UIButton!
    @IBOutlet weak var echoButton: UIButton!
    @IBOutlet weak var reverbButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var recordedAudioURL: URL!
    
    //MARK: IBActions
    @IBAction func playSoundForButton(_sender: AnyObject) {
        print("play sound button pressed")
    }
    
    @IBAction func stopButtonPressed(_sender: AnyObject) {
        print("stop audio button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
