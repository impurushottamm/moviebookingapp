//
//  Session.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 9.04.2024.
//

import Foundation

struct Session {
    var date: Date

    var id: String {
        return date.toString("dd.MM.yyyy HH:mm")
    }

    var month: String {
        return date.month()
    }

    var day: String {
        return String(date.day())
    }

    var time: String {
        get {
            return date.time()
        }
        set {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd.MM.yyyy HH:mm"
            if let newDate = formatter.date(from: "\(date.toString()) \(newValue)") {
                date = newDate
            }
        }
    }

    func isIdentical(_ session: Session?) -> Bool {
        return id == session?.id
    }

    /// Returns session time range like "29 Apr - 10:00 to 13:00"
    func detailedTimeRange() -> String {
        let endDate = Calendar.current.date(byAdding: .hour, value: 3, to: date) ?? date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d MMM"
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "HH:mm"

        let datePart = dateFormatter.string(from: date)
        let startTime = timeFormatter.string(from: date)
        let endTime = timeFormatter.string(from: endDate)

        return "\(datePart) - \(startTime) to \(endTime)"
    }

    init(date: Date) {
        self.date = date
    }
}
