//
//  ChocolatTableViewCell.swift
//  RxTraining
//
//  Created by brq on 18/06/2019.
//  Copyright © 2019 brq. All rights reserved.
//

import UIKit

class ChocolatTableViewCell: UITableViewCell {
    
    public var titleCell = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(titleCell)
        config()
        constrain()
    }
    
    func config(){
        titleCell.numberOfLines = 0
        titleCell.textColor = .black
        titleCell.font = UIFont.boldSystemFont(ofSize: 15)
    }
    
    func constrain(){
        titleCell.translatesAutoresizingMaskIntoConstraints = false
        titleCell.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        titleCell.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 10).isActive = true
        titleCell.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        titleCell.rightAnchor.constraint(equalTo: rightAnchor, constant: 70).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
