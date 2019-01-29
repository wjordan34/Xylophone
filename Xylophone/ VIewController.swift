//
//  ViewController.swift
//  Xylophone


import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
  


    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
       let selectedSoundFileName = soundArray[sender.tag - 1] // this line could be deleted and implmented withing playsound()
        playSound(soundFileName: selectedSoundFileName)
    }
    
    func playSound(soundFileName: String){
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            
        }catch {
            print(error)
        }
        audioPlayer.play()
    }

}

