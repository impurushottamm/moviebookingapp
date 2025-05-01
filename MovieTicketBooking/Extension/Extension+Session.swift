//
//  Extension+Session.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 11.04.2024.
//

import Foundation

extension Session {
    func toString() -> String {
        return "\(self.day) \(self.month) - \(self.time)"
    }
}
