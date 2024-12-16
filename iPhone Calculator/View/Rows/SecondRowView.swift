//
//  SecondRowView.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 13/12/24.
//

import UIKit
import SnapKit

class SecondRowView: UIView {

   // MARK: - UI Component
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 14
        return stackView
    }()
    
    private lazy var num1 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "1", titleColor: UIColor.white)
    
    private lazy var num2 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "2", titleColor: UIColor.white)
    
    private lazy var num3 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "3", titleColor: UIColor.white)
    
    private lazy var plus = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "plus", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.white)
    
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
    extension SecondRowView {
        
        private func layout() {
            // View background
            self.backgroundColor = .clear
            
            // Properties Setup
            num1.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
            num2.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
            num3.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
            plus.backgroundColor = UIColor(red: 241/255, green: 163/255, blue: 59/255, alpha: 1)
        }
       
        private func setupUI() {
            stackView.addArrangedSubview(num1)
            stackView.addArrangedSubview(num2)
            stackView.addArrangedSubview(num3)
            stackView.addArrangedSubview(plus)
            
            self.addSubview(stackView)
            
           // Add Constraints
            
            num1.snp.makeConstraints { make in
                make.height.width.equalTo(80)
            }
            
            num2.snp.makeConstraints { make in
                make.height.width.equalTo(80)
            }

            num3.snp.makeConstraints { make in
                make.height.width.equalTo(80)
            }

            plus.snp.makeConstraints { make in
                make.height.width.equalTo(80)
            }

            stackView.snp.makeConstraints { make in
                make.top.bottom.equalToSuperview()
                make.leading.equalToSuperview().offset(8)
                make.trailing.equalToSuperview().offset(-8)
            }
        }
        
}
