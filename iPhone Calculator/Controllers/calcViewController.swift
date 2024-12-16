//
//  ViewController.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 17/10/24.
//

import UIKit
import SnapKit

class calcViewController: UIViewController {
    
    
    // MARK: - Variables
    private let showResult = ResultVC()
    
    private let inputPlace = InputVC()
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.layout()
        self.setupUI()
    }
}

  // MARK: - Setup UI
extension calcViewController {
    
    private func layout() {
        view.backgroundColor = .black
    }
    
    private func setupUI() {
        
        addChild(showResult)
        addChild(inputPlace)
        
        view.addSubview(showResult.view)
        view.addSubview(inputPlace.view)
        
        // Add Constraints
        showResult.view.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview()
        }
        
        inputPlace.view.snp.makeConstraints { make in
            make.top.equalTo(showResult.view.snp.bottom)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom).offset(-8)
        }
    }
    
}
