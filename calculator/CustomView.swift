//
//  CustomView.swift
//  calculator
//
//  Created by Apple on 12/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
class CustomView: UIViewController,UISideMenuNavigationControllerDelegate,UITableViewDelegate,UITableViewDataSource {
    var myhomeCategory = ["Wallpapers","Videos","Quotes","Awards"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myhomeCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        return cell
    }
    
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
