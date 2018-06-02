
import UIKit
import CoreData
var imageData = Data()
var comingfromFavourites = false
class FavouritesViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(rows.count)
        return rows.count
    }
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let fileName = rows[indexPath.item].filepath!
        let fileUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(fileName)
        do{
            imageData = try Data(contentsOf: fileUrl)
        }
        catch {
            print("Error loading image : \(error)")
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FavouriteCell", for: indexPath) as! FavouriteCollectionViewCell
        cell.favouritesImgView.image = UIImage(data: imageData )
        cell.favouritesImgView.backgroundColor = UIColor.purple
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 5, 10, 5)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width-30)/3, height: (self.view.frame.width-30)/3 )
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        let appdel = UIApplication.shared.delegate as! AppDelegate
        let context = appdel.persistentContainer.viewContext
        do{
            rows = try context.fetch(MyDatabase.fetchRequest())
            print("rows in viewDidLoad : \(rows)")
            myCollectionView.reloadData()
        }
        catch{
            print("Failed fetching")
        }
    }
}
