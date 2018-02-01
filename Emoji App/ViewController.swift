//
//  ViewController.swift
//  Emoji App
//
//  Created by Fiona Hegarty on 1/31/18.
//  Copyright © 2018 Fiona Hegarty. All rights reserved.
//

import UIKit

//let emojiArr = [["😁","Happy Days!"],["🤣","Crazy Days!"],["👄","Kiss!"],["👗", "Blue Dress Day!"],["👓","Cool Shades!"]]
var newArr: [Emoji] = []
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var emojiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // self says this VC will provide datasource
        emojiTable.delegate = self
        emojiTable.dataSource = self
        // playing around with classes and functions
        // create array of emojis
        newArr.append(makeEmojiArr(emojiString: "😁", definition: "Happy Days!", birthYear: 2003, category: "Smiley"))
        newArr.append(makeEmojiArr(emojiString: "👄", definition: "Kiss!", birthYear: 2006, category: "Lips"))
        print(newArr[0].birthYear)
        print(newArr[1].birthYear)
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // this function is called when a user selects a row
        //        print("index path:", indexPath)
        let emoji = newArr[indexPath.row]
        print(emoji.definition)
        // sender is the data being passed to the next View Controller
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detVC = segue.destination as! DetailViewController
        // lets us access and amend the emoji array in the DetailViewController
        detVC.emoji = sender as! Emoji
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // determines how many rows
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this lets us access each cell/row in the table
        let cell  = UITableViewCell()
        cell.textLabel?.text = newArr[indexPath.row].stringEmoji
        return cell
    }
    
    func fiona(data: Array <Any>) -> String {
        let outDataStr = "hi fiona"
        return outDataStr
    }
//    var stringEmoji = ""
//    var definition =  ""
//    var birthYear = 0
//    var category = ""
//
   // return array of emoji objects
    func makeEmojiArr(emojiString: String, definition: String, birthYear: Int, category: String) -> Emoji {
        
        let emoji = Emoji()
        emoji.stringEmoji = emojiString
        emoji.birthYear = birthYear
        emoji.category = category
        emoji.definition = definition
        
        return emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

