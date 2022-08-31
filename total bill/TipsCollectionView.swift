//
//  TipsCollectionView.swift
//  total bill
//
//  Created by Павел Яковенко on 31.08.2022.
//

import UIKit

class TipsCollectionView: UICollectionView {
    
    
    
    var flowLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
