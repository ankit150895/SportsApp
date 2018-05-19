//
//  FullPhotoViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 19/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class FullPhotoViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var myPhotoLink = ""
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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
