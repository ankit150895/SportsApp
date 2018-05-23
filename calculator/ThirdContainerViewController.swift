//
//  ThirdContainerViewController.swift
//  calculator
//
//  Created by Ankit Tanna on 21/05/18.
//  Copyright © 2018 TryCatch Classes. All rights reserved.
//

import UIKit

class ThirdContainerViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var mytableView: UITableView!
    
    
    let myContentHeading = ["Personal life","Commercial investments","Endorsements","Charity"]
    let myImageArray = [#imageLiteral(resourceName: "viratAnushka"),#imageLiteral(resourceName: "virat-wrogn-l"),#imageLiteral(resourceName: "Kohli-Audi1"),#imageLiteral(resourceName: "viratCharity")]
    let myContent = ["Kohli started dating Bollywood actress Anushka Sharma in 2013; the couple soon earned the celebrity couple nickname 'Virushka'.\n\nTheir relationship attracted substantial media attention, with persistent rumours and speculations in the media, as neither of the two publicly talked about it.[333] The couple married on 11 December 2017 in a private ceremony in Florence, Italy.\n\nKohli has admitted that he is superstitious. He used to wear black wristbands as a cricket superstition; earlier, he used to wear the same pair of gloves with which he had 'been scoring'. Apart from a religious black thread, he has also been wearing a kara on his right arm since 2012.","According to Kohli, football is his second favourite sport. In 2014, Kohli became a co-owner of Indian Super League club FC Goa. He stated that he invested in the club with the 'keenness of football' and because he 'wanted football to grow in India'.He added, 'It's a business venture for me for the future. Cricket's not going to last forever and I'm keeping all my options open after retirement.'\n\nIn September 2015, Kohli became a co-owner of the International Premier Tennis League franchise UAE Royals, and, in December that year, became a co-owner of the JSW-owned Bengaluru Yodhas franchise in Pro Wrestling League.\n\nIn November 2014, Kohli and Anjana Reddy's Universal Sportsbiz (USPL) launched a youth fashion brand WROGN. The brand started to produce men's casual wear clothing in 2015 and has tied up with Myntra and Shopper's Stop. In late 2014, Kohli was announced as a shareholder and brand ambassador of the social networking venture 'Sport Convo' based in London.\n\nIn 2015, Kohli invested ₹90 crore (US$14 million) to start a chain of gyms and fitness centres across the country. Launched under the name Chisel, the chain of gyms is jointly owned by Kohli, Chisel India and CSE (Cornerstone Sport and Entertainment), the agency which manages Kohli's commercial interests. In 2016, Kohli started Stepathlon Kids, a children fitness venture, in partnership with Stepathlon Lifestyle.","Kohli was signed up by sports agent Bunty Sajdeh of Cornerstone Sport and Entertainment after the 2008 Under-19 World Cup. Sajdeh recalls, 'I didn’t go after them after they became stars. In fact, I watched Virat at the 2008 ICC Under-19 World Cup in Kuala Lumpur. I was mighty impressed with his attitude and the way he was marshalling his team. He had that spark. And I told Yuvi to set up the meeting.' Sajdeh manages Kohli's endorsement deals, along with those of other Indian cricketers Shikhar Dhawan, Rohit Sharma and Murali Vijay. It was reported in 2013 that Kohli's brand endorsements were worth over ₹100 crore.His bat deal with MRF is said to be the costliest deal in Indian cricket history. In 2017, he signed an eight-year endorsement deal with Puma worth about ₹110 crore, becoming the first Indian sportsperson to sign a ₹100 crore deal with a brand.\n\nIn 2014, American Appraisal estimated Kohli's brand value at US$56.4 million placing him fourth on the list of India's most valued celebrity brands.The same year, UK-based magazine SportsPro rated Kohli as the second most marketable athlete in the world behind only Lewis Hamilton, placing him above the likes of Cristiano Ronaldo, Lionel Messi and Usain Bolt.In an October 2016 report by Duff & Phelps on India's most valued celebrity brands, Kohli's brand value was estimated to be US$92 million, second only to that of Bollywood actor Shah Rukh Khan.\n\nIn 2017, Kohli was ranked 7th in the list released by Forbes as the Most Valuable Brand among athletes ahead of players like Lionel Messi, Rory McIlroy and Stephen Curry with an estimated brand value of $14.5 million.\n\nAs of September 2017, Kohli has endorsement deals with 17 brands. The brands Kohli previously endorsed include 3C Company, Celkon Mobiles, Cinthol (from Godrej), Clear (from Unilever), Fair & Lovely, Fastrack (from Titan), Pepsi, Flying Machine, Mattel, Munch (from Nestle), Oakley, Red Chief Shoes, Royal Challenge (from United Breweries), Sangam Suitings and Toyota Motors.","In March 2013, Kohli started a charity foundation called Virat Kohli Foundation (VKF). The organisation aims at helping underprivileged kids and conducts events to raise funds for the charity.[354] According to Kohli, the foundation works with select NGOs to 'create awareness, seek support and raise funds for the various causes they endorse and the philanthropic work they engage in.'In May 2014, eBay and Save the Children India conducted a charity auction with VKF, with its proceeds benefiting the education and healthcare of underprivileged children.\n\nKohli has captained the All Heart Football Club, owned by VKF, in charity football matches against All Stars Football Club, owned by Abhishek Bachchan's Playing for Humanity. The matches, known as 'Celebrity Clasico', feature cricketers playing for All Heart and Bollywood actors in the All Stars team, and are organized to generate funds for the two charity foundations."]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return myContentHeading.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ThirdContainerCell") as! ThirdContainerTableViewCell
//        let attributedString = NSMutableAttributedString(string: myText)
//        let attachment = NSTextAttachment()
//        attachment.image = cell.myImage.image
//        let imageString = NSAttributedString(attachment: attachment)
//        attributedString.append(imageString)
//        cell.mytxtview.attributedText = attributedString
//        cell.mytxtview.textAlignment = .justified
//        cell.mytxtview.isEditable = false
//        cell.mytxtview.isScrollEnabled = false
//        cell.myImage.image = #imageLiteral(resourceName: "viratAnushka")
//        let imagePath = UIBezierPath(rect: cell.myImage.frame)
//        cell.mytxtview.textContainer.exclusionPaths = [imagePath]
        
      
        let attributedString = NSMutableAttributedString(string: myContent[indexPath.section])
        let attachment = NSTextAttachment()
        attachment.image = cell.imageView?.image
        let imageString = NSAttributedString(attachment: attachment)
        attributedString.append(imageString)
        cell.myTextView.attributedText = attributedString
        cell.myTextView.textAlignment = .justified
        cell.myTextView.isEditable = false
        cell.myTextView.isScrollEnabled = false
        cell.myImageViw.image = myImageArray[indexPath.section]
        cell.myTextView.textColor = UIColor.white
        cell.myTextView.backgroundColor = UIColor.lightGray
        let imagePath = UIBezierPath(rect: cell.myImageViw.frame)
        cell.myTextView.textContainer.exclusionPaths = [imagePath]
        cell.myTextView.font = UIFont.boldSystemFont(ofSize: 18)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myContentHeading[section]
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
