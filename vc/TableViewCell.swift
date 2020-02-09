//
//  TableViewCell.swift
//  vc
//
//  Created by Dhruvik Chevli on 09/02/20.
//  Copyright © 2020 Dhruvik Chevli. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    var photo=UIImageView()
    var likes=UILabel()
    var comments=UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(photo)
        addSubview(likes)
        addSubview(comments)
        configureImageView()
        configureLabels()
        setImageConstraints()
        setLabelConstraints()
    }
    func set(Photo: eachPhoto){
        photo.image = Photo.image
        likes.text = String(Photo.likes)
        comments.text = String(Photo.comments)
    }
    func configureImageView(){
        photo.layer.cornerRadius = 10
        photo.clipsToBounds = true
    }
    func configureLabels(){
        likes.numberOfLines=0
        likes.adjustsFontSizeToFitWidth = true
        comments.numberOfLines=0
        comments.adjustsFontSizeToFitWidth = true
    }
    func setImageConstraints(){
        photo.translatesAutoresizingMaskIntoConstraints = false
        photo.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        photo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20).isActive = true
        photo.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        photo.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
    func setLabelConstraints(){
        likes.translatesAutoresizingMaskIntoConstraints = false
        likes.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 4).isActive = true
        likes.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        likes.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        likes.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 50).isActive = true
        comments.translatesAutoresizingMaskIntoConstraints = false
        comments.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 4).isActive = true
        comments.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        comments.leadingAnchor.constraint(equalTo: likes.trailingAnchor, constant: 5).isActive = true
        comments.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5).isActive = true
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
