//
//  MondayViewController.swift
//  codes
//
//  Created by Shannon Dowdle on 12/4/17.
//  Copyright © 2017 Tommy Dowdle. All rights reserved.
//

import UIKit

class MondayViewController: UIViewController {

    @IBOutlet weak var createNewProjectButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        createNewProjectButton.layer.cornerRadius = 5
        createNewProjectButton.clipsToBounds = true
        

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
