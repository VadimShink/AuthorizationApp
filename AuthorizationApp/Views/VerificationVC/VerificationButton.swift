//
//  VerificationButton.swift
//  AuthorizationApp
//
//  Created by Vadim Shinkarenko on 26.08.2022.
//

import UIKit

class VerificationButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .green
        setTitle("Verification Button", for: .normal)
        let color = UIColor.green
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont(name: "Avenir Book", size: 17)
        isEnabled = false
        alpha = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }
}
