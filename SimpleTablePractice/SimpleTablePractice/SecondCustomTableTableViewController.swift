//
//  SecondCustomTableTableViewController.swift
//  SimpleTablePractice
//
//  Created by LeoKao on 2017/5/12.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class SecondCustomTableTableViewController: UITableViewController {
    
    var restaurantIsVisited = [Bool](repeating: false, count:21)
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantImages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell", for: indexPath) as? SecondTableViewCell{
            
            cell.accessoryType = restaurantIsVisited[indexPath.row] ? .checkmark : .none
            
            //check the row is selected or not
            //this is used to solve the dequeueReusableCell will reuse problem
            
            cell.myImageView.image = UIImage(named: restaurantImages[indexPath.row])
            cell.myName.text = restaurantNames[indexPath.row]
            cell.myLocation.text = restaurantLocations[indexPath.row]
            cell.myType.text = restaurantTypes[indexPath.row]
            return cell
        }else{
            //default
            let cell = UITableViewCell()
            
            if restaurantIsVisited[indexPath.row]{
                cell.accessoryType = .checkmark
            }else{
                cell.accessoryType = .none
            }
            
            cell.textLabel?.text = restaurantNames[indexPath.row]
            cell.imageView?.image = UIImage(named: restaurantImages[indexPath.row])
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Restaurant Details", message: "What do you wanna do ?", preferredStyle: .actionSheet)
        
        let callActionHandler = {
            (action:UIAlertAction!) -> Void in
            let message = UIAlertController(title: "Service Unvailable", message: "Sorry for the number is not available yet", preferredStyle: .alert)
            message.addAction(UIAlertAction(title: "OK!", style: .default, handler: nil))
            
            self.present(message, animated: true, completion: nil)
            
        }
        
        var isVisitedTitle:String = "Add this select"
        if restaurantIsVisited[indexPath.row]{
           isVisitedTitle = "Delete select"
        }

        let isVisitedAction = UIAlertAction(title: isVisitedTitle , style: .default) {
            (action:UIAlertAction) in
            
            let cell = tableView.cellForRow(at: indexPath)
            
            if self.restaurantIsVisited[indexPath.row]{
                cell?.accessoryType = .none
                self.restaurantIsVisited[indexPath.row] = false
            }else{
                cell?.accessoryType = .checkmark
                self.restaurantIsVisited[indexPath.row] = true
            }
            //check for whether user checked the row or not
        }
        
        let callAction = UIAlertAction(title: "Call" + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
        
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        alertController.addAction(isVisitedAction)
        alertController.addAction(action)
        alertController.addAction(callAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
