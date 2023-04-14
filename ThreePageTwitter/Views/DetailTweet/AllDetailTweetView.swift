//
//  AllDetailTweetView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 13.04.2023.
//

import UIKit
import SnapKit

class AllDetailTweetView: UIView {
    // MARK: Views
    let detailTextAreaView = DetailTextAreaView()
    let detailActionCountView = DetailActionCountView()
    let detailActionAreaView = DetailActionAreaView()
    
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(detailTextAreaView)
        addSubview(detailActionCountView)
        addSubview(detailActionAreaView)
        constrainstViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constraints
    private func constrainstViews() {
        detailTextAreaView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(detailActionCountView.snp.top)
        }
        detailActionCountView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalTo(detailActionAreaView.snp.top)
        }
        detailActionAreaView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }

}
