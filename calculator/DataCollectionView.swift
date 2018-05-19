//
//  DataCollectionView.swift
//  calculator
//
//  Created by TryCatch Classes on 18/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

var lbl = ""
var link = ""
var apiImages = NSArray()
var fullImgBridge = 0
class DataCollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var datafetch = false
    @IBOutlet weak var dataCV: UICollectionView!
    var apiImages = NSArray()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return apiImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "dataCell", for: indexPath) as! DataCVCell
        if datafetch == true{
        let  url = URL(string: (self.apiImages.object(at: indexPath.item) as! NSDictionary).value(forKey: "image") as! String)
        cell.imageView?.kf.setImage(with: url!)
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
        let vc = storyboard?.instantiateViewController(withIdentifier: "FullPhotoViewController") as! FullPhotoViewController
        fullImgBridge = indexPath.item
        vc.myPhotoLink = (apiImages.object(at: fullImgBridge) as! NSDictionary).value(forKey: "image") as! String
        self.present(vc, animated: true, completion: nil)
    }
    func apiData(completed: @escaping () -> ()){
        let url = URL(string : link)
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let tempData = data {
                    self.apiImages = try! JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! NSArray
                    print(self.apiImages)
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

        apiData(){
            self.datafetch = true
            self.dataCV.reloadData()
        }
        
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
        
        headerLabel.text = lbl
        // Do any additional setup after loading the view.
    }

    @IBAction func showMenu(){
        
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
