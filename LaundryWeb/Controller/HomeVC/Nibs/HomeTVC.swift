//
//  HomeTVC.swift
//  LaundryWeb
//
//  Created by Ahmed on 16/04/2022.
//

import UIKit
struct HomeModel{
    var isEven: Bool = false
    var img: UIImage = UIImage()
    var title: String = ""
}
class HomeTVC: UITableViewCell {
    
    @IBOutlet weak var cellBGView: UIView!{
        didSet{
            cellBGView.layer.cornerRadius = 10
        }
    }
    @IBOutlet weak var imgChevronRight: UIImageView!
    @IBOutlet weak var txtTitle: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    var populateData: HomeModel!{
        didSet{
            txtTitle.text = populateData.title
            img.image = populateData.img
            if populateData.isEven{
                cellBGView.backgroundColor = UIStyle.Color.evenColor
                imgChevronRight.tintColor = UIStyle.Color.oddColor
                txtTitle.textColor = UIStyle.Color.oddColor
            }else{
                cellBGView.backgroundColor = UIStyle.Color.oddColor
                imgChevronRight.tintColor = UIStyle.Color.evenColor
                txtTitle.textColor = UIStyle.Color.evenColor
            }
        }
    }
}
