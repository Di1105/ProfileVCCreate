//
//  ViewController.swift
//  ProfileVCCreate
//
//  Created by Dilara Elçioğlu on 5.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var collectionBackView = UICollectionView()
    lazy var collectionViewHead = UICollectionView()
    var arrayText1 = ["Ürünlerim","Kampanya Merkezi","Performansım","Öne Çıkar"]
    var productArray = [UIImage(named: "pic1"),UIImage(named: "pic2"),UIImage(named: "pic3"),UIImage(named: "pic4"),UIImage(named: "pic1"),UIImage(named: "pic2"),UIImage(named: "pic3"),UIImage(named: "pic4"),UIImage(named: "pic1"),UIImage(named: "pic2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpUI()
    }

    func setUpUI(){
        
        lazy var profileImage = UIImageView()
        view.addSubview(profileImage)
        profileImage.layer.cornerRadius = 72 / 2
        profileImage.snp.makeConstraints { make in
            make.height.equalTo(72)
            make.width.equalTo(72)
            make.top.equalToSuperview().offset(100)
            make.leading.equalToSuperview().offset(16)
        }
        profileImage.image = UIImage(named: "pro")
        
        lazy var nameLabel = UILabel()
        view.addSubview(nameLabel)
        nameLabel.text = "@angelaBeka"
        nameLabel.textColor = .black
        nameLabel.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.top.equalTo(profileImage)
            make.leading.equalTo(profileImage.snp.trailing).offset(20)
        }
        
        lazy var settingsButton = UIButton()
        view.addSubview(settingsButton)
        settingsButton.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.top.equalTo(nameLabel)
            make.trailing.equalToSuperview().offset(-20)
        }
        settingsButton.setImage(UIImage(named: "settings"), for: .normal)
        settingsButton.setTitleColor(.geyim, for: .normal)
        
        
        lazy var activeImage = UIImageView()
        view.addSubview(activeImage)
        activeImage.snp.makeConstraints { make in
            make.height.width.equalTo(20)
            make.top.equalTo(nameLabel.snp.bottom).offset(6)
            make.leading.equalTo(nameLabel)
        }
        activeImage.image = UIImage(named: "active")
        
        lazy var caseLabel = UILabel()
        view.addSubview(caseLabel)
        caseLabel.text = "biraz önce aktifti"
        caseLabel.font = UIFont.boldSystemFont(ofSize: 14)
        caseLabel.textColor = .lightGray
        caseLabel.snp.makeConstraints { make in
            make.height.equalTo(20)
            make.centerY.equalTo(activeImage)
            make.leading.equalTo(activeImage.snp.trailing).offset(2)
        }
        
        lazy var followerNumberLabel = UILabel()
        followerNumberLabel.font = UIFont.boldSystemFont(ofSize: 14)
        followerNumberLabel.text = "0"
        followerNumberLabel.textColor = .geyim
        view.addSubview(followerNumberLabel)
        followerNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(profileImage.snp.bottom).offset(20)
            make.centerX.equalTo(profileImage)
        }
        
        lazy var followersLabel = UILabel()
        followersLabel.font = UIFont.boldSystemFont(ofSize: 14)
        followersLabel.text = "Takipçi"
        followersLabel.textColor = .geyim
        view.addSubview(followersLabel)
        followersLabel.snp.makeConstraints { make in
            make.top.equalTo(followerNumberLabel.snp.bottom).offset(3)
            make.centerX.equalTo(profileImage)
        }
        
        lazy var followingNumberLabel = UILabel()
        followingNumberLabel.font = UIFont.boldSystemFont(ofSize: 14)
        followingNumberLabel.text = "0"
        followingNumberLabel.textColor = .geyim
        view.addSubview(followingNumberLabel)
        followingNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(followerNumberLabel)
            make.centerX.equalTo(followerNumberLabel).offset(70)
        }
        
        lazy var followingLabel = UILabel()
        followingLabel.font = UIFont.boldSystemFont(ofSize: 14)
        followingLabel.text = "Takip"
        followingLabel.textColor = .geyim
        view.addSubview(followingLabel)
        followingLabel.snp.makeConstraints { make in
            make.top.equalTo(followersLabel)
            make.centerX.equalTo(followingNumberLabel)
        }
        
        lazy var saleNumberLabel = UILabel()
        saleNumberLabel.font = UIFont.boldSystemFont(ofSize: 14)
        saleNumberLabel.text = "0"
        saleNumberLabel.textColor = .geyim
        view.addSubview(saleNumberLabel)
        saleNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(followerNumberLabel)
            make.centerX.equalTo(followingNumberLabel).offset(70)
        }
        
        lazy var saleLabel = UILabel()
        saleLabel.font = UIFont.boldSystemFont(ofSize: 14)
        saleLabel.text = "Satış"
        saleLabel.textColor = .geyim
        view.addSubview(saleLabel)
        saleLabel.snp.makeConstraints { make in
            make.top.equalTo(followersLabel)
            make.centerX.equalTo(saleNumberLabel)
        }
        
        lazy var favNumberLabel = UILabel()
        favNumberLabel.font = UIFont.boldSystemFont(ofSize: 14)
        favNumberLabel.text = "0"
        favNumberLabel.textColor = .geyim
        view.addSubview(favNumberLabel)
        favNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(followerNumberLabel)
            make.centerX.equalTo(saleNumberLabel).offset(70)
        }
        
        lazy var favLabel = UILabel()
        favLabel.font = UIFont.boldSystemFont(ofSize: 14)
        favLabel.text = "Favoriler"
        favLabel.textColor = .geyim
        view.addSubview(favLabel)
        favLabel.snp.makeConstraints { make in
            make.top.equalTo(followersLabel)
            make.centerX.equalTo(favNumberLabel)
        }
        
        lazy var infoLabel = UILabel()
        infoLabel.font = UIFont.boldSystemFont(ofSize: 10)
        infoLabel.text = "Profil Resmi, Kapak Fotoğrafı ve Hakkında alanlarını doldurarak dolabını kişiselleştirebilir."
        infoLabel.textColor = .black
        view.addSubview(infoLabel)
        infoLabel.snp.makeConstraints { make in
            make.top.equalTo(followersLabel.snp.bottom).offset(12)
            make.leading.equalTo(profileImage)
            make.width.equalToSuperview().offset(-24)
        }
        infoLabel.lineBreakMode = .byWordWrapping
        infoLabel.numberOfLines = 3
        
        
        let layout2 = UICollectionViewFlowLayout()
        layout2.scrollDirection = .horizontal
        layout2.minimumLineSpacing = 10
        layout2.itemSize = CGSize(width: (view.frame.size.width/2), height: 30)
        collectionViewHead = UICollectionView(frame: .zero, collectionViewLayout: layout2)
        view.addSubview(collectionViewHead)
        collectionViewHead.delegate = self
        collectionViewHead.dataSource = self
        collectionViewHead.register(SelectCollectionViewCell.self, forCellWithReuseIdentifier: SelectCollectionViewCell.identifier)
        collectionViewHead.snp.makeConstraints { make in
            make.width.equalToSuperview().offset(-32)
            make.centerX.equalToSuperview()
            make.top.equalTo(infoLabel.snp.bottom).offset(12)
            make.height.equalTo(40)
        }
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        //layout.headerReferenceSize = CGSize(width: view.frame.size.width*1/3, height: view.frame.size.width/2)
        layout.itemSize = CGSize(width: (view.frame.size.width/2-24), height: 260)
        collectionBackView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.addSubview(collectionBackView)
        collectionBackView.delegate = self
        collectionBackView.dataSource = self
        collectionBackView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        collectionBackView.snp.makeConstraints { make in
            make.width.equalTo(view).offset(-32)
            make.centerX.equalToSuperview()
            make.top.equalTo(collectionViewHead.snp.bottom).offset(20)
            make.bottom.equalToSuperview().offset(-100)
        }
       
        
        lazy var bottomView = UIView()
        view.addSubview(bottomView)
        bottomView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalToSuperview()
            make.height.equalTo(100)
        }
        bottomView.backgroundColor = .green
         
    }
    
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        var numberOfRow = 1
         switch collectionView{
         case collectionBackView:
             numberOfRow = productArray.count
         case collectionViewHead:
             numberOfRow = arrayText1.count
         default:
             print("row error")
         }
         return numberOfRow
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        
        switch collectionView{
            
        case collectionBackView:
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
            cell1.imageProduct.image = productArray[indexPath.row]
            return cell1
            
        case collectionViewHead:
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: SelectCollectionViewCell.identifier, for: indexPath) as! SelectCollectionViewCell
            cell2.collectionButton.setTitle(arrayText1[indexPath.row], for: .normal)
            
            return cell2
            
        default:
            print("cell error")
        }
        
        return cell
    }
    
   
    
}


