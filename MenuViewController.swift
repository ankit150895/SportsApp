//
//  MenuViewController.swift
//  calculator
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var mytableview: UITableView!
    var menuHeading = ["Home","About KOHLI","RCB Special","Favourties","Invite","App Info","Disclamer"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuHeading.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return mytableview.frame.height/7
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        cell.menuLabel.text = "\t\(menuHeading[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: CustomView())
        SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
    }
}
