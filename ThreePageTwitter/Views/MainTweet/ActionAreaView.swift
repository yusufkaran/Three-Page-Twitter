//
//  ActionAreaView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 12.04.2023.
//

import UIKit
import SnapKit

class ActionAreaView: UIView {
    // MARK: Components
    private let retweetNumber: UILabel = {
        let retweetNumber = UILabel()
        retweetNumber.text = "89"
        retweetNumber.font = FontTemp.ssLight.uiFontCode
        retweetNumber.textColor = LabelColor.boldColor.uiColorCode
        return retweetNumber
    }()
    private let likeNumber: UILabel = {
        let likeNumber = UILabel()
        likeNumber.text = "933"
        likeNumber.textColor = LabelColor.boldColor.uiColorCode
        likeNumber.font = FontTemp.ssLight.uiFontCode
        return likeNumber
    }()
    private let commentNumber: UILabel = {
        let commentNumber = UILabel()
        commentNumber.text = "2"
        commentNumber.font = FontTemp.ssLight.uiFontCode
        commentNumber.textColor = LabelColor.boldColor.uiColorCode
        return commentNumber
    }()
    private let statisticsNumber: UILabel = {
        let viewNumber = UILabel()
        viewNumber.text = "28.4K"
        viewNumber.font = FontTemp.ssLight.uiFontCode
        viewNumber.textColor = LabelColor.boldColor.uiColorCode
        return viewNumber
    }()
    
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
    
    private let statisticsIcon: UIImageView = {
        let statistics = UIImageView()
        statistics.image = UIImage(systemName: "chart.bar.xaxis")
        statistics.tintColor = .gray
        return statistics
    }()
    
    private let shareIcon: UIImageView = {
        let shareIcon = UIImageView()
        shareIcon.image = UIImage(named: "share")
        shareIcon.contentMode = .scaleAspectFill
        return shareIcon
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(retweetNumber)
        addSubview(retweetIcon)
        addSubview(likeNumber)
        addSubview(likeIcon)
        addSubview(commentNumber)
        addSubview(commentIcon)
        addSubview(statisticsNumber)
        addSubview(statisticsIcon)
        addSubview(shareIcon)
        configureConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constraints
    private func configureConstraints(){
        commentIcon.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(125)
            make.height.width.equalTo(16)
            make.leading.equalToSuperview().offset(80)
            make.bottom.equalToSuperview().offset(-10)
        }
        commentNumber.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.leading.equalTo(commentIcon.snp.trailing).offset(5)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
        retweetIcon.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.height.equalTo(14)
            make.width.equalTo(18)
            make.leading.equalTo(commentNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
        retweetNumber.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.leading.equalTo(retweetIcon.snp.trailing).offset(5)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
        likeIcon.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.height.width.equalTo(17)
            make.leading.equalTo(retweetNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
        likeNumber.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.leading.equalTo(likeIcon.snp.trailing).offset(5)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
        statisticsIcon.snp.makeConstraints { make in
            make.height.width.equalTo(20)
            make.leading.equalTo(likeIcon.snp.trailing).offset(45)
            make.top.equalTo(commentIcon.snp.top).offset(-4)
        }
        statisticsNumber.snp.makeConstraints { make in
            make.bottom.equalTo(commentIcon.snp.bottom)
            make.leading.equalTo(statisticsIcon.snp.trailing).offset(4)
        }
        shareIcon.snp.makeConstraints { make in
            make.top.equalTo(commentIcon.snp.top)
            make.height.width.equalTo(14)
            make.leading.equalTo(statisticsNumber.snp.trailing).offset(30)
            make.bottom.equalTo(commentIcon.snp.bottom)
        }
    }
}
