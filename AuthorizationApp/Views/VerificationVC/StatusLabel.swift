//
//  StatusLabel.swift
//  AuthorizationApp
//
//  Created by Vadim Shinkarenko on 26.08.2022.
//

import UIKit

class StatusLabel: UILabel {
    
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
        text = "Check your mail"
        textColor = .black
        font = UIFont(name: "Apple SD Gothic Neo", size: 16)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setNotValidSetting() {
        text = "Mail is not valid. Example: name@domain.ru"
        textColor = UIColor(red: 133/255, green: 28/255, blue: 13/255, alpha: 1)
    }
    
    private func setIsValidSetting() {
        text = "Mail is valid."
        textColor = UIColor(red: 50/255, green: 87/255, blue: 26/255, alpha: 1)
    }
    
    public func setDefaultSetting() {
        configure()
    }
}
