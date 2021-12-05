//
//  ViewController.swift
//  xilofone
//
//  Created by Bruno Lopes on 05/12/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //Reduzindo opacidade do botão
        UIView.animate(withDuration: 0.2) {
            sender.alpha = 0.5
        }
        
        //Duração da animação
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        
            //Opacidade voltando ao normal
            UIView.animate(withDuration: 0.2) { //
                sender.alpha = 1.0
            }
        }
        
    }

    
    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    
    
}

