//
//  CustomView.swift
//  calculator
//
//  Created by Apple on 12/04/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//
/*  -http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_wallpapers_list?page=1
         
 Quotes List
         -http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_quotes_list?page=1
         
 Videos List
         -http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_videos_list?page=1
 
 RCB Images List
         -http://mapi.trycatchtech.com/v1/virat_kohli/rcb_images_list?page=1
         
 Slogans List
         -http://mapi.trycatchtech.com/v1/mob_jokes/image_post_list?category_id=1
 */

import UIKit
import SideMenu
import Kingfisher
class CustomView: UIViewController,UISideMenuNavigationControllerDelegate,UITableViewDelegate,UITableViewDataSource {
    var dataFetchCompleted = false
    var wallpapers = NSArray()
    var videos = NSArray()
    var quotes = NSArray()
    var myWallpaperData = [Wallpapers]()
    var myVideoData = [Videos]()
    var myQuotesData = [Quotes]()
    
    var myhomeCategory = ["Wallpapers","Videos","Quotes"]
    var myCellLabel = ["Get all the cool photos of Virat Kohli here","Some of the insight Videos of our champ - VK","Get to know what the celebs are talking about our home boy!"]
    @IBOutlet weak var myTableView : UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myhomeCategory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell") as! HomeTableViewCell
        cell.homeCellLabel.textColor = UIColor.white
        cell.homeCellLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.homeCellLabel.numberOfLines = 2
        cell.homeCellLabel.text = myCellLabel[indexPath.section]
        if dataFetchCompleted == true {
            if indexPath.section == 0{
        let MyImageString = myWallpaperData[0].image
            let  url = URL(string: MyImageString)
            cell.homeCellimgView?.kf.setImage(with: url!)
            
            }
        else if indexPath.section == 1{
                let MyImageString = myVideoData[0].image
                let  url = URL(string: MyImageString)
                cell.homeCellimgView?.kf.setImage(with: url!)
        }
        else if indexPath.section == 2{
                let MyImageString = myQuotesData[0].image
                let  url = URL(string: MyImageString)
                cell.homeCellimgView?.kf.setImage(with: url!)
        }
        }
        else
        {
            print("Data left to fetch")
        }
        return cell
    }
    
    
    func fetchAPI(completed: @escaping () -> ()){
        let url = URL(string : "http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_wallpapers_list?page=1")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let tempData = data {
                    do{
                        self.myWallpaperData = try JSONDecoder().decode([Wallpapers].self, from: tempData)
                        print(self.myWallpaperData)
                        DispatchQueue.main.async {
                            completed()
                        }
                    }catch{
                        print(error)
                    }
                }
        };task.resume()
        let urlVideo = URL(string : "http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_videos_list?page=1")
        let taskVideo = URLSession.shared.dataTask(with: urlVideo!) { (data, response, error) in
            if let tempData = data {
                do{
                    self.myVideoData = try JSONDecoder().decode([Videos].self, from: tempData)
                    print(self.myVideoData)
                    DispatchQueue.main.async {
                        completed()
                    }
                }catch{
                    print(error)
                }
            }
        };taskVideo.resume()
        let urlQuotes = URL(string : "http://mapi.trycatchtech.com/v1/virat_kohli/virat_kohli_quotes_list?page=1")
        let taskQuotes = URLSession.shared.dataTask(with: urlQuotes!) { (data, response, error) in
            if let tempData = data {
                do{
                    self.myQuotesData = try JSONDecoder().decode([Quotes].self, from: tempData)
                    print(self.myQuotesData)
                    DispatchQueue.main.async {
                        completed()
                    }
                }catch{
                    print(error)
                }
            }
        };taskQuotes.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let a = UIImageView()
        a.image = #imageLiteral(resourceName: "HeaderDarkBG")
        a.contentMode = .scaleToFill
        let headerView = UITableViewHeaderFooterView()
        headerView.backgroundView = a
        
        let myTitleLabel = UILabel(frame: CGRect(x: 20, y: 0, width: self.view.frame.width*0.5, height: 50))
        myTitleLabel.textColor = UIColor.white
        myTitleLabel.font = UIFont.boldSystemFont(ofSize: 26)
        myTitleLabel.text = myhomeCategory[section]
        
        let sideView = UIView(frame : CGRect(x: 0, y: 0, width: 10, height: 50))
        sideView.backgroundColor = UIColor.red
        
        let buttonView = UIButton(frame : CGRect(x: self.view.frame.width - 110, y: 10, width: 100, height: 30))
        buttonView.titleLabel?.textColor = UIColor.white
        buttonView.setTitle("View All", for: .normal)
        buttonView.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        buttonView.layer.borderWidth = 2
        buttonView.layer.borderColor = UIColor.lightGray.cgColor
        
        headerView.addSubview(sideView)
        headerView.addSubview(myTitleLabel)
        headerView.addSubview(buttonView)
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let a = UIView()
        a.backgroundColor = UIColor.black
        return a
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.frame.height * 0.4
    }
    
    override func viewDidLoad() {
      super.viewDidLoad()
        let a = UIImageView()
        a.image = #imageLiteral(resourceName: "VKFloatImage")
        a.frame = CGRect(x: self.view.frame.width - 75, y: self.view.frame.height * 0.02, width: self.view.frame.width * 0.18, height: self.view.frame.width * 0.18)
        a.alpha = 0.75
        self.navigationController?.navigationBar.addSubview(a)
        
        fetchAPI(){
            if (self.myQuotesData.count != 0 && self.myVideoData.count != 0 && self.myWallpaperData.count != 0){
            self.dataFetchCompleted = true
            }else{
                self.dataFetchCompleted = false
            }
            self.myTableView.reloadData()
            
        }
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        }
    }

    