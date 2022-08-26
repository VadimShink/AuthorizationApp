//
//  VerificationButton.swift
//  AuthorizationApp
//
//  Created by Vadim Shinkarenko on 26.08.2022.
//

import UIKit

class VerificationButton: UIButton {
    
    public var isValid = false {
        didSet {
            if self.isValid {
                setIsValidSetting()
            } else {
                setNotValidSetting()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .blue
        setTitle("Verification", for: .normal)
        let color = UIColor.white
        setTitleColor(color, for: .normal)
        layer.cornerRadius = 10
        titleLabel?.font = UIFont(name: "Avenir Book", size: 17)
        isEnabled = false
        alpha = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSetting() {
        isEnabled = false
        alpha = 0.5
    }
    
    private func setIsValidSetting() {
        isEnabled = true
        alpha = 1
    }
    
    public func setDefaultSetting() {
        configure()
    }
}
