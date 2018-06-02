//
//  DataCollectionView.swift
//  calculator
//
//  Created by TryCatch Classes on 18/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import AVKit

var lbl = ""
var link = ""
var youtubeVideoLink = ""
var apiImages = NSArray()

var fullImgBridge = 0

class DataCollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    let webView  = UIWebView()
    var datafetch = false
    @IBOutlet weak var dataCV: UICollectionView!
    
    var playerInfo = [["name" : "ABD" , "skills" : "Batsmen"]] as NSArray
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return apiImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! DataCVCell
        if datafetch == true{
            if isSloganSelected == true{
                cell.btn.isHidden = true
                cell.imageView.image = apiImages[indexPath.row] as! UIImage
                return cell
            }
            else{
            if lbl == "Videos"{
                let  url = URL(string: ((apiImages.object(at: indexPath.item) as! NSDictionary).value(forKey: "image") as! String))
                //print("my url :\(url)")
                cell.imageView?.kf.setImage(with: url!)
            }
            else {
                cell.btn.isHidden = true
                let  url = URL(string: ((apiImages.object(at: indexPath.item) as! NSDictionary).value(forKey: "image") as! String))
                //print("my url :\(url)")
                cell.imageView?.kf.setImage(with: url!)
            }
        }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(15, 10, 15, 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width / 2 - 20, height: self.view.frame.width / 2 - 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if lbl == "Videos"{
            youtubeVideoLink  = (apiImages.object(at: indexPath.item) as! NSDictionary).value(forKey: "url") as! String
            let vc = storyboard?.instantiateViewController(withIdentifier: "VideoPlayVC") as! UINavigationController
            self.present(vc, animated: true, completion: nil)
        }
        else {
            if isSloganSelected == true {
                let vc = storyboard?.instantiateViewController(withIdentifier: "FullPhotoViewController") as! FullPhotoViewController
                fullImgBridge = indexPath.item
                self.present(vc, animated: true, completion: nil)
            }
            else {
            let vc = storyboard?.instantiateViewController(withIdentifier: "FullPhotoViewController") as! FullPhotoViewController
            fullImgBridge = indexPath.item
            vc.myPhotoLink = (apiImages.object(at: fullImgBridge) as! NSDictionary).value(forKey: "image") as! String
            self.present(vc, animated: true, completion: nil)
        }
        }
    }
    
    func apiData(completed: @escaping () -> ()){
        let url = URL(string : link)
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let tempData = data {
                //print(tempData)
                apiImages = try! JSONSerialization.jsonObject(with: tempData, options: .mutableContainers) as! NSArray
                //print(self.apiImages)
                DispatchQueue.main.async {
                    completed()
                }
            }
        }
        task.resume()
    }
    
    @IBOutlet weak var headerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if isSloganSelected == true {
            self.datafetch = true
            apiImages = [#imageLiteral(resourceName: "Slogan1"),#imageLiteral(resourceName: "Slogan2"),#imageLiteral(resourceName: "Slogan3"),#imageLiteral(resourceName: "Slogan4"),#imageLiteral(resourceName: "Slogan5")]
        }
        else{
        apiData(){
            self.datafetch = true
            self.dataCV.reloadData()
        }
        }
        headerLabel.text = lbl
        
        let a = UIImageView()
        a.image = #imageLiteral(resourceName: "VKFloatImage")
        a.frame = CGRect(x: self.view.frame.width - 75, y: self.view.frame.height * 0.02, width: self.view.frame.width * 0.18, height: self.view.frame.width * 0.18)
        a.alpha = 1
        let b = UILabel(frame : CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.height)!))
        b.text = "VK-The App"
        b.textAlignment = .center
        b.textColor = UIColor.white
        b.font = UIFont.boldSystemFont(ofSize: 20)
        self.navigationController?.navigationBar.addSubview(a)
        self.navigationController?.navigationBar.addSubview(b)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMenu(){
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
