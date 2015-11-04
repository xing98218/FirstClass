//
//  MessageTableViewController.swift
//  FirstClass
//
//  Created by wangxing on 15/11/3.
//  Copyright © 2015年 chinasap. All rights reserved.
//

import UIKit

class MessageTableViewController: UITableViewController {
    var sourse:[MessageModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        //构造数据源
         sourse=[]
        
        let message1=MessageModel()
         message1.Img=UIImage(named: "qq")
        message1.Title="腾讯新闻"
        message1.Content="云南破获家族贩毒案缴毒294斤"
        message1.date="09:58"
        sourse?.append(message1)
        
        let message2=MessageModel()
        message2.Img=UIImage(named: "Subscription")
        message2.Title="订阅号"
        message2.Content="吴晓波书友会众筹重译《国富论》，开出史上最高翻译费"
        message2.date="20/10/15"
        sourse?.append(message2)

        
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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sourse!.count
    }

   //根据行号返回行样式
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
       let img=cell.viewWithTag(100) as! UIImageView
        img.image=sourse![indexPath.row].Img
        
        let title=cell.viewWithTag(101) as! UILabel
        title.text=sourse![indexPath.row].Title
        
        let content=cell.viewWithTag(102) as! UILabel
        content.text=sourse![indexPath.row].Content
        
        let date=cell.viewWithTag(103) as! UILabel
        date.text=sourse![indexPath.row].date
        
        return cell
    }
   
    
    //自定义行高度
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath)-> CGFloat{
       return 60
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
