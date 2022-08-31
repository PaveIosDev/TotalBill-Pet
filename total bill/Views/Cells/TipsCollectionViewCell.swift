//
//  TipsCollectionViewCell.swift
//  total bill
//
//  Created by Павел Яковенко on 31.08.2022.
//

import UIKit

class TipsCollectionViewCell: UICollectionViewCell {
    
    let procentLabel: UILabel = {
       let label = UILabel()
        label.text = "10%"
        label.textColor = #colorLiteral(red: 0.1882352941, green: 0.2235294118, blue: 0.2784313725, alpha: 1)
        label.font = UIFont(name: "Avenir Next Bold", size: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor  = #colorLiteral(red: 0.9450980392, green: 0.9490196078, blue: 0.9411764706, alpha: 1)
        layer.cornerRadius = 10
        
        addSubview(procentLabel)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            procentLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            procentLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2),
            procentLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        
        ])
    }
}
