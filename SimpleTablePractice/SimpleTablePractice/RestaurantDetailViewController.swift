//
//  RestaurantDetailViewController.swift
//  SimpleTablePractice
//
//  Created by LeoKao on 2017/5/11.
//  Copyright © 2017年 LeoKao. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    var infoFromViewOneImage:String?
    var infoFromViewOneName:String?
    var infoFromViewOneLocal:String?
    var infoFromViewOneType:String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = infoFromViewOneName
        locationLabel.text = infoFromViewOneLocal
        typeLabel.text = infoFromViewOneType
        
        if let okFileName = infoFromViewOneImage{
            myImageView.image = UIImage(named: okFileName)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
