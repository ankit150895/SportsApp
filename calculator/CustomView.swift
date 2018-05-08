//
//  CustomView.swift
//  calculator
//
//  Created by Apple on 12/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
class CustomView: UIViewController,UISideMenuNavigationControllerDelegate {
    var albumName = NSMutableArray()
   // var albumImage: [UIImage] = [#imageLiteral(resourceName: "defaultImage")]
    @IBOutlet weak var myTrial : UIButton!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var popUpTitle: UITextField!
    
    @IBAction func myTrialPressed(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TrialViewController") as! TrialViewController
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func donePress(_ sender: Any) {
        albumName.add(popUpTitle.text as Any)
        popUpTitle.text = ""
        myTableView.reloadData()
        popUpView.removeFromSuperview()
    }
  
   
   
    
    @IBOutlet var popUpView: UIVisualEffectView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MenuSeague"
        {
            // self.present(UISideMenuNavigationController(rootViewController:CustomView()), animated: true, completion: nil)
        }
    }
    
    var menuVisible = false
    override func viewDidLoad() {
        
        super.viewDidLoad()
        /*let menuLeftNavigationController = UISideMenuNavigationController(rootViewController:  CustomView())
         SideMenuManager.default.menuLeftNavigationController = menuLeftNavigationController
         let menuRightNavigationController = UISideMenuNavigationController(rootViewController: CustomView())
         SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
         SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
         SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
         */
    }
    
    
    
    
}
