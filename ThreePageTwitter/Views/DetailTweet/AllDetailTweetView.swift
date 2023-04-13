//
//  AllDetailTweetView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 13.04.2023.
//

import UIKit
import SnapKit

class AllDetailTweetView: UIView {

    let detailTextAreaView = DetailTextAreaView()
    let detailActionCountView = DetailActionCountView()
    let detailActionAreaView = DetailActionAreaView()
    
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
    
    private func constrainstViews() {
        detailTextAreaView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }
        detailActionCountView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        detailActionAreaView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
    }

}
