//
//  Extension+Int.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 11.04.2024.
//

import Foundation

extension Int {
    func formatSingleDigitNumber() -> String {
        self < 10 ? "0\(self)" : "\(self)"
    }
}
