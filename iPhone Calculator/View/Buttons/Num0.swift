//
//  Num0.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 13/12/24.
//

import UIKit
import SnapKit

class Num0: UIButton {

    // MARK: - UI Component
    private let label: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 40)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    // MARK: Initialize
    init(frame: CGRect, title: String) {
        super.init(frame: frame)
        self.label.text = title
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


    // MARK: - Setup UI
    extension Num0 {
      private func setupUI() {
          self.addSubview(label)
          
          label.snp.makeConstraints { make in
              make.centerY.equalToSuperview()
              make.leading.equalToSuperview().offset(30)
          }
        }
}
