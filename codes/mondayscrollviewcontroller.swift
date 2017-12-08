//
//  mondayscrollviewcontroller.swift
//  codes
//
//  Created by Shannon Dowdle on 12/5/17.
//  Copyright © 2017 Tommy Dowdle. All rights reserved.
//

import UIKit

class mondayscrollviewcontroller: UIViewController {
    @IBOutlet weak var terminal: UIButton!
    @IBOutlet weak var Github: UIButton!
    @IBOutlet weak var splashScreenUsingACocoaPod: UIButton!
    @IBOutlet weak var cocoaPods: UIButton!
    @IBOutlet weak var editButtonShape: UIButton!
    @IBOutlet weak var cocoaTouchClassFile: UIButton!
    @IBOutlet weak var buttonOnViewController: UIButton!
    @IBOutlet weak var tabBarIconsNames: UIButton!
    @IBOutlet weak var tabBar: UIButton!
    @IBOutlet weak var appIcon: UIButton!
    @IBOutlet weak var appDelegate: UIButton!
    @IBOutlet weak var createNewProject: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createNewProject.layer.cornerRadius = 5
        createNewProject.clipsToBounds = true
        appDelegate.layer.cornerRadius = 5
        appDelegate.clipsToBounds = true
        appIcon.layer.cornerRadius = 5
        appIcon.clipsToBounds = true
        tabBar.layer.cornerRadius = 5
        tabBar.clipsToBounds = true
        tabBarIconsNames.layer.cornerRadius = 5
        tabBarIconsNames.clipsToBounds = true
        buttonOnViewController.layer.cornerRadius = 5
        buttonOnViewController.clipsToBounds = true
        cocoaTouchClassFile.layer.cornerRadius = 5
        cocoaTouchClassFile.clipsToBounds = true
        editButtonShape.layer.cornerRadius = 5
        editButtonShape.clipsToBounds = true
        cocoaPods.layer.cornerRadius = 5
        cocoaPods.clipsToBounds = true
        splashScreenUsingACocoaPod.layer.cornerRadius = 5
        splashScreenUsingACocoaPod.clipsToBounds = true
        Github.layer.cornerRadius = 5
        Github.clipsToBounds = true
        terminal.layer.cornerRadius = 5
        terminal.clipsToBounds = true
    

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        if let mondayDetailsVC = storyboard?.instantiateViewController(withIdentifier: "mondayDetailsVCIdentifier") as? MondayDetailsViewController {
            mondayDetailsVC.buttonTag = sender.tag
            
            self.navigationController?.pushViewController(mondayDetailsVC, animated: true)
            
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
