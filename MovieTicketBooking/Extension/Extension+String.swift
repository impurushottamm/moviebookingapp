//
//  Extension+String.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 11.04.2024.
//

import Foundation

extension String {
    func toDate()->Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.date(from: self)!
    }
}
