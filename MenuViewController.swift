//
//  MenuViewController.swift
//  calculator
//
//  Created by Apple on 18/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
var MyIndexPath = -1
class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var mytableview: UITableView!
    var menuHeading = ["Home","About KOHLI","RCB Special","Favourites","Invite","App Info"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuHeading.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return mytableview.frame.height/6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell") as! MenuTableViewCell
        cell.menuLabel.text = "\t\(menuHeading[indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       MyIndexPath = indexPath.row
        if MyIndexPath == 1 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "KohliVC") as! AboutKohliViewController
            let sidevc = self.navigationController as! UISideMenuNavigationController
            sidevc.show(vc, sender: nil)
        }
        else if MyIndexPath == 0 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "CustomVC") as! CustomView
            let sidevc = self.navigationController as! UISideMenuNavigationController
            sidevc.show(vc, sender: nil)
        }
        else if MyIndexPath == 5 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "AppInfoViewController") as! AppInfoViewController
            let sidevc = self.navigationController as! UISideMenuNavigationController
            sidevc.show(vc, sender: nil)
        }
        else if MyIndexPath == 3 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "FavouritesViewController") as! FavouritesViewController
            let sidevc = self.navigationController as! UISideMenuNavigationController
            sidevc.show(vc, sender: nil)
        }
        else if MyIndexPath == 2 {
            let vc = storyboard?.instantiateViewController(withIdentifier: "RCBSpecialVC") as! RCBSpecialVC
            let sidevc = self.navigationController as! UISideMenuNavigationController
            sidevc.show(vc, sender: nil)
        }
        else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mytableview.delegate = self
        self.mytableview.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: CustomView())
        SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
    }
}
