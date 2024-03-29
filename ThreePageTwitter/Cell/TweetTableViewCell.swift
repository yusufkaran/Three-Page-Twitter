//
//  TweetTableViewCell.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 12.04.2023.
//

import UIKit
import SnapKit

class TweetTableViewCell: UITableViewCell {
    // MARK: Identifier
    static let identifier = "TweetTableViewCell"
    
    let allTweetView = AllTweetView()
    
    // MARK: Lifecyle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(allTweetView)
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: ConfigureConstraints
    private func configureConstraints() {
        allTweetView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

}
