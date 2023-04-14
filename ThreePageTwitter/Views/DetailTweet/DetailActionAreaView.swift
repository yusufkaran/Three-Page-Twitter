//
//  DetailActionAreaView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 13.04.2023.
//

import UIKit

class DetailActionAreaView: UIView {
    // MARK: Components
    private let commentIcon: UIImageView = {
        let commentIcon = UIImageView()
        commentIcon.image = UIImage(named: "comment")
        commentIcon.contentMode = .scaleAspectFill
        return commentIcon
    }()
    private let retweetIcon: UIImageView = {
        let retweetIcon = UIImageView()
        retweetIcon.image = UIImage(named: "retweet")
        retweetIcon.contentMode = .scaleAspectFill
        return retweetIcon
    }()
    private let likeIcon: UIImageView = {
        let likeIcon = UIImageView()
        likeIcon.image = UIImage(named: "like")
        likeIcon.contentMode = .scaleAspectFill
        return likeIcon
    }()
    private let bookmarkIcon: UIImageView = {
        let bookmarkIcon = UIImageView()
        bookmarkIcon.image = UIImage(named: "bookmark")
        return bookmarkIcon
    }()
    private let shareIcon: UIImageView = {
        let shareIcon = UIImageView()
        shareIcon.image = UIImage(named: "share")
        shareIcon.contentMode = .scaleAspectFill
        return shareIcon
    }()
    // MARK: Lifecyle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(retweetIcon)
        addSubview(likeIcon)
        addSubview(commentIcon)
        addSubview(shareIcon)
        addSubview(bookmarkIcon)
        configureConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constraints
    private func configureConstraints(){
        commentIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.height.width.equalTo(18)
            make.leading.equalToSuperview().offset(50)
            make.bottom.equalToSuperview().offset(-10)
        }
        retweetIcon.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.height.equalTo(17)
            make.width.equalTo(21)
            make.leading.equalTo(commentIcon.snp.trailing).offset(44)
        }
        likeIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.height.width.equalTo(22)
            make.leading.equalTo(retweetIcon.snp.trailing).offset(44)
        }
        bookmarkIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.height.equalTo(22)
            make.width.equalTo(26)
            make.leading.equalTo(likeIcon.snp.trailing).offset(44)
        }
        shareIcon.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.height.width.equalTo(18)
            make.leading.equalTo(bookmarkIcon.snp.trailing).offset(44)
        }
    }

}
