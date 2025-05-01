//
//  VC_Ticket.swift
//  MovieTicketBooking
//
//  Created by Recep Purushottam kumar on 6.04.2024.
//

import UIKit

final class TicketVC: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var seatsLabel: UILabel!
    @IBOutlet weak private var dateLabel: UILabel!
    @IBOutlet weak private var timeLabel: UILabel!
    @IBOutlet weak private var priceLabel: UILabel!
    
    // MARK: - Variables
    
    var ticket: Ticket?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillTicket()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    // MARK: - Functions
    
    private func fillTicket() {
        guard let ticket = ticket else { return }
        titleLabel.text = ticket.movie.title
        seatsLabel.text = ticket.seatCodes()
        dateLabel.text = ticket.session.date.toString()
        timeLabel.text = ticket.session.time
        priceLabel.text = "₹\(ticket.price)"
    }
        
    // MARK: - Outlets
    
    @IBAction private func btnGoHome_TUI(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
