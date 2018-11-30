//
//  PlaySoundsViewController.swift
//  PitchPerfect
//
//  Created by MAKL on 22/11/18.
//  Copyright © 2018 Akhila. All rights reserved.
//

import UIKit
import AVFoundation

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
    var audioFile: AVAudioFile!
    var audioEngine: AVAudioEngine!
    var audioPlayerNode: AVAudioPlayerNode!
    var stopTimer: Timer!
    
    enum buttonType: Int { case slow = 0, fast, chipmunk, vader, echo, reverb }
    
    //MARK: IBActions
    @IBAction func playSoundForButton(_ sender: UIButton) {
        switch buttonType(rawValue: sender.tag)! {
        case .slow :
            playSound(rate: 0.5)
        case .fast :
            playSound(rate: 1.5)
        case .chipmunk :
            playSound(pitch: 1000)
        case .vader :
            playSound(pitch: 1000)
        case .echo :
            playSound(echo: true)
        case .reverb:
            playSound(reverb: true)
        }
    }
    
    @IBAction func stopButtonPressed(_sender: AnyObject) {
        print("stop audio button pressed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAudio()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        configureUI(.notPlaying)
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
