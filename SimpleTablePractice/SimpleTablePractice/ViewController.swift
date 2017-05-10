//
//  ViewController.swift
//  SimpleTablePractice
//
//  Created by LeoKao on 2017/5/10.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var restaurantNames_section1 = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate"]
    
    var restaurantNames_section2 = ["Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "CASK Pub and Kitchen"]
    
    var restaurantImages_section1 = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg"]
    
    var restaurantImages_section2 = ["palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "caskpubkitchen.jpg"]
    
    var restaurantLocations_section1 = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney"]
    
    var restaurantLocations_section2 = [ "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes_section1 = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe"]
    
    var restaurantTypes_section2 = ["American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return restaurantNames_section1.count
        }else{
            return restaurantNames_section2.count
        }
    } //return how many rows you wanna show
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    } //how many sections will tableView show
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = restaurantNames_section1[indexPath.row]
            cell.imageView?.image = UIImage(named: restaurantImages_section1[indexPath.row])
        }else{
            cell.textLabel?.text = restaurantNames_section2[indexPath.row]
            cell.imageView?.image = UIImage(named: restaurantImages_section2[indexPath.row])
        }
       
        return cell
    } //from indexPath.row we can get the row we want and set text
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "First Group Of Restaurant"
        }else{
            return "Second Group Of Restaurant"
        }
    } //show title of section
    
    /*
    override var prefersStatusBarHidden: Bool{
        return true
    } let bar hidden
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

