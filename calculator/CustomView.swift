//
//  CustomView.swift
//  calculator
//
//  Created by Apple on 12/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import SideMenu
import Alamofire

class CustomView: UIViewController,UISideMenuNavigationControllerDelegate,UITableViewDelegate,UITableViewDataSource {
    var wallpapers = NSArray()
    var videos = NSArray()
    var quotes = NSArray()
    var myhomeCategory = ["Wallpapers","Videos","Quotes"]
    @IBOutlet weak var myTableView : UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return myhomeCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        
        /*if wallpapers == nil {
            print("TEST : \(wallpapers)")
            viewDidLoad()
        }else {
     if indexPath.section == 0
        {
            var MyImageString = ((wallpapers[0] as! NSDictionary).value(forKey: "image")) as! String
            cell.homeCellimgView.image = UIImage(named: MyImageString)
        }
        else if indexPath.section == 1{
            var MyImageString = ((videos[0] as! NSDictionary).value(forKey: "image"))as! String
            cell.homeCellimgView.image = UIImage(named: MyImageString)
        }
        else if indexPath.section == 2{
            var MyImageString = ((quotes[0] as! NSDictionary).value(forKey: "image")) as! String
            cell.homeCellimgView.image = UIImage(named: MyImageString)
        }
        }*/
        return cell
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
        Alamofire.request("http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_wallpapers_list?page=1").responseJSON { responseWallpaper in
            if let wallpaperArray = responseWallpaper.result.value{
                self.wallpapers = wallpaperArray as! NSArray
                print("JSON : \(self.wallpapers[0])")
                //self.myTableView.reloadData()
            }
        }
        Alamofire.request("http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_videos_list?page=1").responseJSON { responseVideo in
            if let videoArray = responseVideo.result.value{
                self.videos = videoArray as! NSArray
                print("JSON VIDEO : \(self.videos[0])")
                //self.myTableView.reloadData()
            }
        }
        Alamofire.request("http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_quotes_list?page=1").responseJSON { responseQuotes in
            if let quotesArray = responseQuotes.result.value{
                self.quotes = quotesArray as! NSArray
                print("JSON QUOTES : \(self.quotes[0])")
                //self.myTableView.reloadData()
            }
        }
        let a = UIImageView()
        a.image = #imageLiteral(resourceName: "VKFloatImage")
        a.frame = CGRect(x: self.view.frame.width - 75, y: self.view.frame.height * 0.02, width: self.view.frame.width * 0.18, height: self.view.frame.width * 0.18)
        a.alpha = 0.75
        self.navigationController?.navigationBar.addSubview(a)
        
    }
    
    }

    
