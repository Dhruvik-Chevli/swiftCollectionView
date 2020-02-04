//
//  ViewController.swift
//  vc
//
//  Created by Dhruvik Chevli on 26/01/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//

import UIKit

struct CustomData {
    var title : String
    var image : UIImage
}

class ViewController: UIViewController {
    /*let data = [
        CustomData(title: <#T##String#>, image: <#T##UIImage#>)
    ]*/
    fileprivate let collectionView:UICollectionView={
        let layout=UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv=UICollectionView(frame: .zero,collectionViewLayout:layout)
        cv.translatesAutoresizingMaskIntoConstraints=false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(collectionView)
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive=true
    }
}
extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:  UICollectionViewLayout, sizeForItemAt indexPath: IndexPath ) -> CGSize {
        return CGSize(width : collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int{
        return 4
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)-> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.backgroundColor = .red
        return cell
    }
    class CustomCell: UICollectionViewCell {
        fileprivate let bg: UIImageView = {
            let iv = UIImageView()
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.clipsToBounds = true
            iv.image = #imageLiteral(resourceName: "ss")
            iv.layer.cornerRadius = 12
            return iv
        }()
        
        override init(frame: CGRect) {
            super.init(frame: .zero)
            contentView.addSubview(bg)
            
            bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
            bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
            bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
        
}

