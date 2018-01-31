//
//  ViewController.swift
//  Emoji App
//
//  Created by Fiona Hegarty on 1/31/18.
//  Copyright © 2018 Fiona Hegarty. All rights reserved.
//

import UIKit

let emojiArr = [["😁","Happy Days!"],["🤣","Crazy Days!"],["👄","Kiss!"],["👗", "Blue Dress Day!"],["👓","Cool Shades!"]]
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("index path:", indexPath)
        let emoji = emojiArr[indexPath.row]
        // sender is the data being passed to the next View Controller
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    
    }
    @IBOutlet weak var emojiTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // self says this VC will provide datasource
        emojiTable.delegate = self
        emojiTable.dataSource = self
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detVC = segue.destination as! DetailViewController
        // lets us access and amend the emoji array in the DetailViewController
        detVC.emoji = sender as! Array
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // determines how many rows
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // this lets us access each cell/row in the table
        let cell  = UITableViewCell()
        cell.textLabel?.text = emojiArr[indexPath.row][0]
        return cell
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

