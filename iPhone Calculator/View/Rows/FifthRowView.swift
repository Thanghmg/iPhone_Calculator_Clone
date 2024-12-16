//
//  FifthRowView.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 16/12/24.
//

import UIKit
import SnapKit

class FifthRowView: UIView {
    
    // MARK: - UI Components
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 14
        return stackView
    }()
    
    private lazy var clear = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "AC", titleColor: UIColor.black)
    
    private lazy var negative = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "plus.forwardslash.minus", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.black)
    
    private lazy var percentage = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "percent", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.black)
    
    private lazy var divide = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "divide", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.white)
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layout()
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

    // MARK: UI Setup
extension FifthRowView {
    
    private func layout() {
        // View background
        self.backgroundColor = .clear
        
        // Button Background
        clear.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        negative.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        percentage.backgroundColor = UIColor(red: 165/255, green: 165/255, blue: 165/255, alpha: 1)
        divide.backgroundColor = UIColor(red: 241/255, green: 163/255, blue: 59/255, alpha: 1)
    }
    
    private func setupUI() {
        stackView.addArrangedSubview(clear)
        stackView.addArrangedSubview(negative)
        stackView.addArrangedSubview(percentage)
        stackView.addArrangedSubview(divide)
        
        self.addSubview(stackView)
        
        // Add Constraints
        clear.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        negative.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        percentage.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        divide.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
    }
}
