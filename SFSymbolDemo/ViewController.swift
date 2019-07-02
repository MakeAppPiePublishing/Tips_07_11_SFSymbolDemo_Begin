//
//  ViewController.swift
//  SFSymbolDemo
//
//  Created by Steven Lipton on 7/2/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//
//  An exercise file for iOS Development Tips Weekly
//  by Steven Lipton (C)2018, All rights reserved
//  For videos go to http://bit.ly/TipsLinkedInLearning
//  For code go to http://bit.ly/AppPieGithub
//

import UIKit

class ViewController: UITableViewController {
    
    var timesTapped = Array(repeating: 0, count: 10)
    
    func spellOut(_ int:Int)->String{
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .spellOut
        return numberFormatter.string(from: NSNumber(value: int)) ?? "Nil"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timesTapped.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let font = UIFont.preferredFont(forTextStyle: .title1)
        
        cell.textLabel?.text = spellOut(index)
        cell.textLabel?.font = font
        /// Add SF Symbol stuff here:
        
        
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        timesTapped[indexPath.row] += 1
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

