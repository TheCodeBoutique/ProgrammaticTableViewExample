//
//  TableViewController.swift
//  TableViewProgrammatically
//
//  Created by Marin Fischer on 7/10/14.
//  Copyright (c) 2014 MarinFischer. All rights reserved.
//

import UIKit

//*******DONT FORGET TO CONFORM TO THE TABLEVIEW PROTOCOLS!*******
class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    //create a tableView variable
    var tableView: UITableView?
    
    //table view data source array
    var items: String[] = ["Swift", "is", "cool", "Remy", "Chad", "Blake", "Deanna", "Kyle", "Jorge"]
    

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.drawTableView()
    }
    
    //create table view and call this medthod in viewDidLoad
    func drawTableView() -> UITableView {
        //make the frame of the table view be the bounds of the window (to fit any device)
        var tableViewFrame: CGRect
        tableView = UITableView()
        tableViewFrame = self.tableView!.frame
        tableViewFrame.size.width = CGRectGetWidth(self.view.frame)
        tableViewFrame.size.height = CGRectGetHeight(self.view.frame)
        
        tableView!.frame = tableViewFrame
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(tableView)
        
        return tableView!
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(tableView: UITableView!, numberOfSectionsInTableView section: Int) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        
        cell.textLabel.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        //print does not drop down a line. println is equivalent to \n
        print("you selected cell: #\(indexPath.row), ")
        println( "name: \(items[indexPath.row])")
    }
    
}
