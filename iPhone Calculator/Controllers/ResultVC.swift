//
//  ResultVC.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 16/12/24.
//

import UIKit
import SnapKit

class ResultVC: UIViewController {
    
    // MARK: - UI Components
    
    private lazy var resultLabel: UILabel = {
        let result = UILabel()
        result.textColor = .white
        result.text = "0"
        result.font = .systemFont(ofSize: 90)
        return result
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.layout()
        self.setupUI()
    }
}

    // UI Setup
extension ResultVC {
    
    private func layout() {
        view.backgroundColor = .clear
    }
    
    private func setupUI() {
        view.addSubview(resultLabel)
        
        resultLabel.snp.makeConstraints { make in
            make.trailing.equalToSuperview().offset(-16)
            make.bottom.equalToSuperview().offset(-16)
        }
    }
}
