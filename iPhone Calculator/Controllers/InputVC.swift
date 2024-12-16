//
//  InputVC.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 16/12/24.
//

import UIKit
import SnapKit

class InputVC: UIViewController {
    
    // MARK: - UI Components
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private let firstRow = FirstRowView()
    private let secondRow = SecondRowView()
    private let thirdRow = ThirdRowView()
    private let forthRow = ForthRowView()
    private let fifthRow = FifthRowView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.layout()
        self.setupUI()
    }
}

    // MARK: - UI Setup
extension InputVC {
    
    private func layout() {
        view.backgroundColor = .clear
    }
    
    private func setupUI() {
        
        stackView.addArrangedSubview(fifthRow)
        stackView.addArrangedSubview(forthRow)
        stackView.addArrangedSubview(thirdRow)
        stackView.addArrangedSubview(secondRow)
        stackView.addArrangedSubview(firstRow)
        
        view.addSubview(stackView)
        
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
    }
}
