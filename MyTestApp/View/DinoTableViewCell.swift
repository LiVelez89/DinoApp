//
//  DinoTableViewCell.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import UIKit

class DinoTableViewCell: UITableViewCell {
    
    let dinoName = UILabel()
    let dinoDescription = UILabel()
    
    static let reuseID = "dinoCell"
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Setup and Layout??
extension DinoTableViewCell {
    
    private func setup() {
        
        dinoName.translatesAutoresizingMaskIntoConstraints = false
        dinoName.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        
        contentView.addSubview(dinoName)
    }
    
}
