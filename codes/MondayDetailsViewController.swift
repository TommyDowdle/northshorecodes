//
//  MondayDetailsViewController.swift
//  codes
//
//  Created by Shannon Dowdle on 12/5/17.
//  Copyright © 2017 Tommy Dowdle. All rights reserved.
//

import UIKit
import Parse

class MondayDetailsViewController: UIViewController {
    @IBOutlet weak var detailsText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
        

        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        
        let query = PFQuery(className: "textDetails")
        
        query.limit = 1000
        
        query.whereKey("buttonTag", equalTo: self.buttonTag)
        
        query.findObjectsInBackground { (objects, error) in
            
            if let theObjects = objects {
                
                let buttonDetails = theObjects.first
                
                self.detailsText.text = buttonDetails?.object(forKey: "curriculumText") as? String
                
            }
            
        }
        
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
