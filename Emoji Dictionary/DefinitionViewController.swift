//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Julian Aguilar on 12/7/17.
//  Copyright © 2017 Julian Aguilar. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        if emoji == "🦑" {
            definitionLabel.text = "fuck a fake fish where my real squids at"
        }
        if emoji == "🙃" {
            definitionLabel.text = "can mean whatever you want"
        }
        if emoji == "👻" {
            definitionLabel.text = "Spooky!!!!"
        }
        if emoji == "🤦🏽‍♂️" {
            definitionLabel.text = "hella smh"
        }
        if emoji == "🙆🏽‍♂️" {
            definitionLabel.text = "unconvinced okay"
        }
        if emoji == "🤷🏽‍♀️" {
            definitionLabel.text = "facetious shrug"
        }
        if emoji == "🙈" {
            definitionLabel.text = "OOPS"
        }
        if emoji == "🙊" {
            definitionLabel.text = "oops"
        }
        if emoji == "😅" {
            definitionLabel.text = "the nervous colleen"
        }
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
