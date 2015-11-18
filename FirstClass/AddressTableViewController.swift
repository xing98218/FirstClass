//
//  AddressTableViewController.swift
//  FirstClass
//
//  Created by wangxing on 15/11/16.
//  Copyright © 2015年 chinasap. All rights reserved.
//

import UIKit

class AddressTableViewController: UITableViewController,UISearchResultsUpdating {
      let indexs=["A","B","C"]
     var FilterSourse:[[AddressModel]]=[]
    var searchctr:UISearchController=UISearchController(searchResultsController:nil)

    var AddressSourse:[[AddressModel]]=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchctr.searchBar.placeholder="搜索"
        searchctr.searchResultsUpdater=self
        searchctr.dimsBackgroundDuringPresentation=false
        searchctr.searchBar.sizeToFit()
        self.tableView.tableHeaderView=searchctr.searchBar
        
    
        var AddressSourse1:[AddressModel]=[]
        for _ in 0...3{
            let Address=AddressModel()
            Address.Title="新朋友"
            Address.Img=UIImage(named: "friends_48px")
            AddressSourse1.append(Address)
        }
        AddressSourse.append(AddressSourse1)
        
        var AddressSourse2:[AddressModel]=[]
        for _ in 0...4{
            let Address=AddressModel()
            Address.Title="艺术家"
            Address.Img=UIImage(named: "artist_48px")
            AddressSourse2.append(Address)
        }
        AddressSourse.append(AddressSourse2)
        
        var AddressSourse3:[AddressModel]=[]
        for _ in 0...4{
            let Address=AddressModel()
            Address.Title="婴儿"
            Address.Img=UIImage(named: "baby_48px")
            AddressSourse3.append(Address)
        }
        AddressSourse.append(AddressSourse3)
        
        
        var AddressSourse4:[AddressModel]=[]
        for _ in 0...9{
            let Address=AddressModel()
            Address.Title="男孩"
            Address.Img=UIImage(named: "boy_48px")
            AddressSourse4.append(Address)
        }
        AddressSourse.append(AddressSourse4)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return AddressSourse.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
              return AddressSourse[section].count
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        if(section==0){
          return 0
        }
        else{
            return 20.0

        }
    }
//    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 0
//    }
    //返回索引数据源
    override func sectionIndexTitlesForTableView(tableView: UITableView) -> [String]? {
        return indexs
    }
    //设置header的高度
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String{
        if(section==0){
            return ""
        }
        else{
            return indexs[section-1]
        }
    }
    //设置点击索引后移动到的对应的Section
    override  func tableView(tableView: UITableView, sectionForSectionIndexTitle title: String, atIndex index: Int) -> Int{
        return index+1
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let img=cell.viewWithTag(100) as! UIImageView
        let lab=cell.viewWithTag(101) as! UILabel
        img.image=AddressSourse[indexPath.section][indexPath.row].Img
        lab.text=AddressSourse[indexPath.section][indexPath.row].Title
        // Configure the cell...

        return cell
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath)-> CGFloat{
            return 60
    }

    
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        
    }

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
