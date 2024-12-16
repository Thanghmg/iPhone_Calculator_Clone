//
//  ForthRowView.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 14/12/24.
//

import UIKit
import SnapKit

class ForthRowView: UIView {

    // MARK: - UI Components
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 14
        return stackView
    }()
    
    private lazy var num7 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "7", titleColor: UIColor.white)
    
    private lazy var num8 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "8", titleColor: UIColor.white)
    
    private lazy var num9 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "9", titleColor: UIColor.white)
    
    private lazy var multiple = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "multiply", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.white)
    
    // MARK: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
        self.layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

    // MARK: - UI Setup

extension ForthRowView {
    
    private func layout() {
        // View background
        self.backgroundColor = .clear
        
        // Background Color
        num7.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        num8.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        num9.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        multiple.backgroundColor = UIColor(red: 241/255, green: 163/255, blue: 59/255, alpha: 1)
    }
    
    private func setupUI() {
        stackView.addArrangedSubview(num7)
        stackView.addArrangedSubview(num8)
        stackView.addArrangedSubview(num9)
        stackView.addArrangedSubview(multiple)
        addSubview(stackView)
        
        // Add Constraints
        
        num7.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        num8.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }

        num9.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }

        multiple.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
    }
    
}
