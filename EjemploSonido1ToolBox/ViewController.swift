//
//  ViewController.swift
//  EjemploSonido1ToolBox
//
//  Created by Netzer Rivera on 21/12/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

// Sonido Simple

import UIKit
import AudioToolbox


class ViewController: UIViewController {

    private var miSonido:SystemSoundID = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sonidoURL = NSBundle.mainBundle().URLForResource("Ping", withExtension: "aiff")
        AudioServicesCreateSystemSoundID(sonidoURL! as CFURL, &miSonido)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }

    @IBAction func play() {
        
        AudioServicesPlaySystemSound(miSonido)
        
    }
    
    
    
    
    

}

