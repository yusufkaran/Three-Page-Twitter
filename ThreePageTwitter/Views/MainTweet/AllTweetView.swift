//
//  AllTweetAreaView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 12.04.2023.
//

import UIKit
import SnapKit

class AllTweetView: UIView {
    // MARK: Views
    let textAreaView = TextAreaView()
    let actionAreaView = ActionAreaView()
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(textAreaView)
        addSubview(actionAreaView)
        constraintsView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configure Constraints
    private func constraintsView() {
        textAreaView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        actionAreaView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
