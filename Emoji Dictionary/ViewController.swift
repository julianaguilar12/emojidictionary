//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Julian Aguilar on 12/7/17.
//  Copyright © 2017 Julian Aguilar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        emojis = makeEmojiArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.name
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "firstSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.name = "🙃"
        emoji1.category = "faces"
        emoji1.definition = "whatever u want"
        emoji1.birthYear = 2015
        
        let emoji2 = Emoji()
        emoji2.name = "🦐"
        emoji2.category = "sea creature"
        emoji2.definition = "sarcasm reacts only"
        emoji2.birthYear = 2015
        
        let emoji3 = Emoji()
        emoji3.name = "🙊"
        emoji3.category = "reacts"
        emoji3.definition = "oops reacts only"
        emoji3.birthYear = 2015
        
        let emoji4 = Emoji()
        emoji4.name = "🙈"
        emoji4.category = "reacts"
        emoji4.definition = "OOPS"
        emoji4.birthYear = 2015
        
        let emoji5 = Emoji()
        emoji5.name = "👻"
        emoji5.category = "faces"
        emoji5.definition = "Spookyy!!"
        emoji5.birthYear = 2015
        
        let emoji6 = Emoji()
        emoji6.name = "🙆🏽‍♂️"
        emoji6.category = "reacts"
        emoji6.definition = "facetious ok"
        emoji6.birthYear = 2015
        
        let emoji7 = Emoji()
        emoji7.name = "🤦🏽‍♂️"
        emoji7.category = "reacts"
        emoji7.definition = "smh reacts"
        emoji7.birthYear = 2015
        
        let emoji8 = Emoji()
        emoji8.name = "🤷🏽‍♀️"
        emoji8.category = "reacts"
        emoji8.definition = "however u feelin"
        emoji8.birthYear = 2015
        
        let emoji9 = Emoji()
        emoji8.name = "🦑"
        emoji8.category = "sea creatures"
        emoji8.definition = "sarcasm reacts"
        emoji8.birthYear = 2015
        
        let emoji10 = Emoji()
        emoji10.name = "😅"
        emoji10.category = "faces"
        emoji10.definition = "the nervous colleen"
        emoji10.birthYear = 2015
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
        
    }

}

