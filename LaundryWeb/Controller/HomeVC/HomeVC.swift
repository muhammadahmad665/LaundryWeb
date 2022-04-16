//
//  HomeVC.swift
//  LaundryWeb
//
//  Created by Ahmed on 16/04/2022.
//

import UIKit

class HomeVC: UIViewController {
//MARK: @IBOutlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imgBG: UIImageView!
    
//MARK: Variables
    var homeData = [
        HomeModel(isEven: true, img: UIImage(named: "orders")!, title: "orders".uppercased()),
        HomeModel(isEven: false, img: UIImage(named: "Workflow")!, title: "how it works".uppercased()),
        HomeModel(isEven: true, img: UIImage(named: "Chat Icon")!, title: "about us".uppercased()),
        HomeModel(isEven: false, img: UIImage(named: "contact")!, title: "contact us".uppercased())
    ]
    
//MARK: View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "HomeTVC", bundle: nil), forCellReuseIdentifier: "HomeTVC")
        
        self.imgBG.clipsToBounds = true
        imgBG.layer.cornerRadius = 40
        imgBG.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
}

//MARK: Table View Delegate and DataSource
extension HomeVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        homeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTVC", for: indexPath) as! HomeTVC
        cell.populateData = homeData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        86
    }
}
