//
//  SelectCollectionViewCell.swift
//  OrderViewController
//
//  Created by Dilara Elçioğlu on 4.01.2023.
//

import UIKit
import SnapKit

class SelectCollectionViewCell: UICollectionViewCell {
    static let identifier = "CustomCellHead"
  
    var collectionButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
       
        contentView.addSubview(collectionButton)

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        collectionButton.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        collectionButton.layer.borderWidth = 1
        collectionButton.layer.borderColor = UIColor.lightGray.cgColor
        collectionButton.clipsToBounds = true
        collectionButton.layer.borderWidth = 1
        collectionButton.layer.borderColor = UIColor.lightGray.cgColor
        collectionButton.layer.cornerRadius = 15
        collectionButton.backgroundColor = .white
        collectionButton.setTitleColor(.black, for: .normal)
        
       
   
    }
}
