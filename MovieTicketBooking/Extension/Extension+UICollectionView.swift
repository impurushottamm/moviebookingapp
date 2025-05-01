//
//  Extension+CollectionView.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 17.04.2024.
//

import Foundation
import UIKit

extension UICollectionView {
    func setup(_ nibName: String, _ flowLayout: UICollectionViewFlowLayout) {
        self.register(UINib(nibName: nibName, bundle: nil), forCellWithReuseIdentifier: nibName)
        self.collectionViewLayout = flowLayout
    }
}
