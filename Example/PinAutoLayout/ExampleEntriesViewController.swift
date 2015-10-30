//
//  ViewController.swift
//  PinAutoLayout
//
//  Created by banxi1988 on 09/30/2015.
//  Copyright (c) 2015 banxi1988. All rights reserved.
//

import UIKit

enum ExampleEntry:String{
    case layoutSubviewsHorizontal
    case layoutSubviewsVertical
    
    static var allEntries:[ExampleEntry]{
        return [ExampleEntry.layoutSubviewsHorizontal,ExampleEntry.layoutSubviewsVertical]
    }
}


class ExampleEntriesViewController: UITableViewController{
    let entries = ExampleEntry.allEntries
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let entry = entries[indexPath.row]
        cell.textLabel?.text = entry.rawValue
        
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let entry  = entries[indexPath.row]
        switch entry{
        case .layoutSubviewsHorizontal:
            showDetailViewController(LayoutSubviewsHorizontalViewController(), sender: self)
        case .layoutSubviewsVertical:
            showDetailViewController(LayoutSubviewsVerticalViewController(), sender: self)
        default:
            break
        }
    }
}

