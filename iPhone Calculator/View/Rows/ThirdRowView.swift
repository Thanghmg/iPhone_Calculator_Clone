//
//  ThirdRowView.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 13/12/24.
//

import UIKit
import SnapKit

class ThirdRowView: UIView {

    // MARK: - UI Components
    private let stackview: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.spacing = 14
        return stackview
    }()
    
    private lazy var num4 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "4", titleColor: UIColor.white)
    
    private lazy var num5 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "5", titleColor: UIColor.white)
    
    private lazy var num6 = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: "6", titleColor: UIColor.white)
    
    private lazy var minus = ButtonImg(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonIcon: UIImage(systemName: "minus", withConfiguration: UIImage.SymbolConfiguration(weight: .bold)), withColor: UIColor.white)
    
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

    // MARK: - UI Setup
extension ThirdRowView {
  
    private func layout() {
        // View background
        self.backgroundColor = .clear
        
        // Button background
        num4.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        num5.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        num6.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        minus.backgroundColor = UIColor(red: 241/255, green: 163/255, blue: 59/255, alpha: 1)
    }
    
    private func setupUI() {
        stackview.addArrangedSubview(num4)
        stackview.addArrangedSubview(num5)
        stackview.addArrangedSubview(num6)
        stackview.addArrangedSubview(minus)
        
        self.addSubview(stackview)
        
        // Add Constraints
        
        num4.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        num5.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }

        num6.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }

        minus.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }

        stackview.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
    }
}
