//
//  CollectionViewCell.swift
//  OrderViewController
//
//  Created by Dilara Elçioğlu on 3.01.2023.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    var label = UILabel()
    static let identifier = "CustomCell"
    var bigButton = UIButton()
    var imageProduct = UIImageView()
    var caseLabel = UILabel()
    var dateLabel = UILabel()
    var priceLabel = UILabel()
    var brandLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(bigButton)
        bigButton.addSubview(imageProduct)
        bigButton.addSubview(caseLabel)
        bigButton.addSubview(dateLabel)
        bigButton.addSubview(priceLabel)
        bigButton.addSubview(brandLabel)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        bigButton.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        bigButton.layer.borderWidth = 1
        bigButton.layer.borderColor = UIColor.lightGray.cgColor
        bigButton.clipsToBounds = true
        bigButton.layer.borderWidth = 0
        bigButton.layer.cornerRadius = 15
        bigButton.backgroundColor = UIColor(displayP3Red: 232/255, green: 248/255, blue: 245/255, alpha: 1)

        imageProduct.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(imageProduct.snp.width)
        }
        //imageProduct.layer.cornerRadius = 25
        imageProduct.layer.borderWidth = 1
        imageProduct.layer.borderColor = UIColor.white.cgColor
        
        brandLabel.snp.makeConstraints { make in
            make.top.equalTo(imageProduct.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(12)
            make.height.equalTo(20)
        }
        brandLabel.text = "Nike Ayakkabı"
        brandLabel.textColor = .black
        
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(brandLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(12)
            make.height.equalTo(20)
        }
        priceLabel.text = "2.230 TL "
        priceLabel.textColor = .geyim
        
        
      

    }
    
    
    
}

extension UIColor {
    
    static let geyim = UIColor(red: 59/255, green: 183/255, blue: 125/255, alpha: 1)
    
}
