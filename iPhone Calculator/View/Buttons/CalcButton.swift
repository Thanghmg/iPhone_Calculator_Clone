//
//  CalcButton.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 13/12/24.
//

import UIKit
import SnapKit

class CalcButton: UIButton {
    
    // MARK: - UI Components
    
    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 38)
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Initialize
    init(frame: CGRect, buttonLabel: String, titleColor: UIColor?) {
        super.init(frame: frame)
        self.label.text = buttonLabel
        self.label.textColor = titleColor
        self.layer.cornerRadius = frame.height / 2
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

   // MARK: - UI Constraints

    extension CalcButton {
       
        private func setupUI() {
            self.addSubview(label)
            
            label.snp.makeConstraints { make in
                make.centerX.centerY.equalToSuperview()
            }
        }
    
    }

