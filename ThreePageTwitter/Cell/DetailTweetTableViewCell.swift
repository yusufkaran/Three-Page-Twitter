//
//  DetailTweetTableViewCell.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 12.04.2023.
//

import UIKit

class DetailTweetTableViewCell: UITableViewCell {
    // MARK: Identifier
    static let identifier = "DetailTweetTableViewCell"
    
    let allDetailTweetView = AllDetailTweetView()
    
    // MARK: Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(allDetailTweetView)
        configureConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Configure Constraints
    private func configureConstraints() {
        allDetailTweetView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
