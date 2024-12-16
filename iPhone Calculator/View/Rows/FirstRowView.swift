//
//  FirstRowView.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 13/12/24.
//

import UIKit
import SnapKit


class FirstRowView: UIView {

  // MARK: - UI Components
  private let stackView: UIStackView = {
      let stackView = UIStackView()
      stackView.axis = .horizontal
      stackView.spacing = 14
      return stackView
    }()
    
    private lazy var number0 = Num0(frame: CGRect(x: 0, y: 0, width: 190, height: 80), title: "0")
    
    private lazy var pointer = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80), buttonLabel: ",", titleColor: UIColor.white)
    
    private lazy var equalButton = CalcButton(frame: CGRect(x: 0, y: 0, width: 80, height: 80),buttonLabel: "=", titleColor: UIColor.white)
    
  // MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

  // MARK: - UI Setup
  extension FirstRowView {
      
    private func setupUI() {
        
        self.backgroundColor = .clear
        
        stackView.addArrangedSubview(number0)
        stackView.addArrangedSubview(pointer)
        stackView.addArrangedSubview(equalButton)
        addSubview(stackView)
        
        // Properties Setup
        number0.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        pointer.backgroundColor = UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1)
        equalButton.backgroundColor = UIColor(red: 241/255, green: 163/255, blue: 59/255, alpha: 1)
        
        number0.snp.makeConstraints { make in
            make.height.equalTo(80)
            make.width.equalTo(190)
        }
        
        pointer.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        equalButton.snp.makeConstraints { make in
            make.height.width.equalTo(80)
        }
        
        // StackView constraints
        stackView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(8)
            make.trailing.equalToSuperview().offset(-8)
        }
    }
}
