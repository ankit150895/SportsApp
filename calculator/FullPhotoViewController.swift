//
//  FullPhotoViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 19/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit
import CoreData
var myIndex = 0
var noOffavImg = 0
var isfilesaved = false
var rows = [MyDatabase]()
class FullPhotoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var downloadableImage = UIImageView()
    var myPhotoLink = ""
    var index = 0
    
    var tempImg = Data()

    @IBOutlet weak var collectionviewInst: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    @IBAction func Xfunction(_ sender: Any) {
        comingfromFavourites = false
        self.dismiss(animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mediaCell", for: indexPath) as! FullPhotoCollectionViewCell
        if isSloganSelected == true{
            print("Slogan")
            savebutton.isHidden = true
            cell.myFullImg.image = apiImages[fullImgBridge] as! UIImage
        }else {
            if comingfromFavourites == true{
                let fileName = rows[favouriteIndex].filepath!
                let fileUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(fileName)
                do{
                    imageData = try Data(contentsOf: fileUrl)
                }
                catch {
                    print("Error loading image : \(error)")
                }
            print("getting into fVOURITES")
            cell.myFullImg.image = UIImage(data: imageData)
            cell.myFullImg.contentMode = .scaleAspectFit
            savebutton.setTitle("Download", for: .normal)
                downloadableImage.image = cell.myFullImg.image
            return cell
        }
            else {
        let url = URL(string : myPhotoLink)
        cell.myFullImg.kf.setImage(with: url!)
        cell.myFullImg.contentMode = .scaleAspectFit
        }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:self.collectionviewInst.frame.width, height: self.collectionviewInst.frame.height)
    }
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        
        if error == nil {
            let ac = UIAlertController(title: "Saved!", message: "Image saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
        } else {
            let ac = UIAlertController(title: "Save error", message: error?.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(ac, animated: true, completion: nil)
        }
    }
    
    @IBAction func saveButtonPressed(_ sender: Any) {
        if comingfromFavourites == true {
            UIImageWriteToSavedPhotosAlbum(downloadableImage.image!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
        }
        else {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        var token = UserDefaults.standard.object(forKey: "mytoken")
        print("current value of token : \(token)")
        myIndex = token as! Int
        let userEntity = MyDatabase(context: context)
        let a = String(myPhotoLink.suffix(3))
        //Get the documents directory URL
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        //Choose a name for your image
        let fileName = "myPhotoLink_\(myIndex).jpeg"
        let fileUrl = documentsDirectory.appendingPathComponent(fileName)
        userEntity.filepath = String(describing: fileName)
        print("\(String(describing: userEntity.filepath))")
        appDel.saveContext()
        myIndex += 1
        if a == "png" {
            let image = UIImageView()
            let myPhotoUrl = URL(string: myPhotoLink)
            image.kf.setImage(with: myPhotoUrl)
            if let data = UIImagePNGRepresentation(image.image!),
                !FileManager.default.fileExists(atPath: fileUrl.path){
                do {
                    try data.write(to: fileUrl)
                    print("file saved zala")
                    isfilesaved = true
                }catch {
                    print("fucked up:",error)
                    isfilesaved = false
                }
            }
        }
        else{
            let image = UIImageView()
            let myPhotoUrl = URL(string: myPhotoLink)
            image.kf.setImage(with: myPhotoUrl)
            if let data = UIImageJPEGRepresentation(image.image!, 1.0),
                !FileManager.default.fileExists(atPath: fileUrl.path){
                do {
                    try data.write(to: fileUrl)
                    print("file saved zala")
                    isfilesaved = true
                }catch {
                    print("fucked up:",error)
                    isfilesaved = false
                }
            }
        }
        if isfilesaved == true {
        self.dismiss(animated: true, completion: nil)
        }else {
                
        }
        token = myIndex
        UserDefaults.standard.set(token, forKey: "mytoken")
        UserDefaults.standard.synchronize()
        }
    }
    
    @IBOutlet weak var savebutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if comingfromFavourites == true {
//            savebutton.isHidden = true
//            savebutton.removeFromSuperview()
//            //comingfromFavourites = false
//        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}
