//
//  MailTextField.swift
//  AuthorizationApp
//
//  Created by Vadim Shinkarenko on 26.08.2022.
//

import UIKit

protocol ActionsMailTextFieldProtocol: AnyObject {
    func typingText(text: String)
    func cleanOutTextField()
}

class MailTextField: UITextField {
    
    weak var textFieldDelegate: ActionsMailTextFieldProtocol?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .white
        borderStyle = .none
        layer.cornerRadius = 10
        textColor = .black
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        leftViewMode = .always
        clearButtonMode = .always
        returnKeyType = .done
        autocorrectionType = .no
        placeholder = "Enter mail"
        font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension MailTextField: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.resignFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = textField.text, let rangeText = Range(range, in: text) {
            let updateText = text.replacingCharacters(in: rangeText, with: string)
            textFieldDelegate?.typingText(text: updateText)
        }
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        textFieldDelegate?.cleanOutTextField()
        return true
    }
}
