//
//  ButtonImg.swift
//  iPhone Calculator
//
//  Created by Thang Hoang on 14/12/24.
//

import UIKit
import SnapKit

class ButtonImg: UIButton {

   // MARK: - UI Components
    private let icon: UIImageView = {
        let icon = UIImageView()
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    // MARK: - Initialize
    init(frame: CGRect, buttonIcon: UIImage?, withColor: UIColor?) {
        super.init(frame: frame)
        self.layer.cornerRadius = frame.height / 2
        self.layer.masksToBounds = true
        self.icon.image = buttonIcon
        self.icon.tintColor = withColor
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

    // MARK: - Setup UI
extension ButtonImg {
    
    private func setupUI() {
        self.addSubview(icon)
        
        icon.snp.makeConstraints { make in
            make.height.width.equalTo(32)
            make.centerX.centerY.equalToSuperview()
        }
    }
}
