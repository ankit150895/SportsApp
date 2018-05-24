//
//  FullPhotoViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 19/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import CoreData
var Globalindex = 0
class FullPhotoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var myPhotoLink = ""
    var index = 0
    @IBOutlet weak var collectionviewInst: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    @IBAction func Xfunction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mediaCell", for: indexPath) as! FullPhotoCollectionViewCell
        let url = URL(string : myPhotoLink)
        cell.myFullImg.kf.setImage(with: url!)
        cell.myFullImg.contentMode = .scaleAspectFit
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.collectionviewInst.frame.width, height: self.collectionviewInst.frame.height)
    }

    
    @IBAction func saveButtonPressed(_ sender: Any) {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        let userEntity = MyDatabase(context: context)
        let a = String(myPhotoLink.suffix(3))
        if a == "png" {
            let url = URL(string: myPhotoLink)
            if let data = try? Data(contentsOf: url!)
            {
                let image : UIImage = UIImage(data: data)!
                let imageData = UIImagePNGRepresentation(image)
                print("\(imageData)\n")
                userEntity.image = imageData
                userEntity.id = String(index)
                index += 1
            }
        }
        else{
            let url = URL(string: myPhotoLink)
            if let data = try? Data(contentsOf: url!)
            {
                let image : UIImage = UIImage(data: data)!
                let imageData = UIImageJPEGRepresentation(image, 0.75)!
                print("\(imageData)\n")
                userEntity.image = imageData
                userEntity.id = String(index)
                index += 1
                }
            }
        Globalindex = index
        print("myindex : \(index)")
        print("AAdil bhia ka index \(Globalindex)")
        let BhavinOza = context.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
