//
//  CVCell_UpcomingMovie.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 2.04.2024.
//

import UIKit

class UpcomingMoviePosterCVC: UICollectionViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak private var imageIV: UIImageView!
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var directorLabel: UILabel!
    
    // MARK: - Functions
    func setupCell(_ movie: Movie) {
        imageIV.image = movie.image
        titleLabel.text = movie.title
        directorLabel.text = movie.director
    }

}
