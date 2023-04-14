//
//  DetailActionCountView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 13.04.2023.
//

import UIKit

class DetailActionCountView: UIView {
    // MARK: Components
    private let dateNumber: UILabel = {
        let dateNumber = UILabel()
        dateNumber.text = "10:59 · 12.04.2023 ·"
        dateNumber.textColor = LabelColor.lightColor.uiColorCode
        dateNumber.font = FontTemp.sMedium.uiFontCode
        return dateNumber
    }()
    private let viewNumber: UILabel = {
        let viewNumber = UILabel()
        viewNumber.text = "28,4K"
        viewNumber.textColor = LabelColor.boldColor.uiColorCode
        viewNumber.font = FontTemp.sBold.uiFontCode
        return viewNumber
    }()
    private let viewLabel: UILabel = {
        let viewLabel = UILabel()
        viewLabel.text = "Views"
        viewLabel.textAlignment = .left
        viewLabel.font = FontTemp.sLight.uiFontCode
        viewLabel.textColor = LabelColor.lightColor.uiColorCode
        return viewLabel
    }()
    private let separatorLine: UILabel = {
        let separatorLine = UILabel()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 365, height: 0)
        separatorLine.backgroundColor = .white
         
        var stroke = UIView()
        stroke.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.center = separatorLine.center
        separatorLine.addSubview(stroke)
        separatorLine.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.layer.borderWidth = 0.33
        stroke.layer.borderColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1).cgColor
        return separatorLine
    }()
    private let retweetNumber: UILabel = {
        let retweetNumber = UILabel()
        retweetNumber.text = "89"
        retweetNumber.textColor = LabelColor.boldColor.uiColorCode
        retweetNumber.font = FontTemp.mBold.uiFontCode
        return retweetNumber
    }()
    
    private let retweetText: UILabel = {
        let retweetText = UILabel()
        retweetText.text = "Retweets"
        retweetText.font = FontTemp.mLight.uiFontCode
        retweetText.textColor = LabelColor.lightColor.uiColorCode
        return retweetText
    }()
    
    private let quoteNumber: UILabel = {
        let quoteNumber = UILabel()
        quoteNumber.text = "2"
        quoteNumber.textColor = LabelColor.boldColor.uiColorCode
        quoteNumber.font = FontTemp.mBold.uiFontCode
        return quoteNumber
    }()
    private let quoteText: UILabel = {
        let quoteText = UILabel()
        quoteText.text = "Quote"
        quoteText.font = FontTemp.mLight.uiFontCode
        quoteText.textColor = LabelColor.lightColor.uiColorCode
        return quoteText
    }()
    private let likeNumber: UILabel = {
        let likeNumber = UILabel()
        likeNumber.text = "933"
        likeNumber.textColor = LabelColor.boldColor.uiColorCode
        likeNumber.font = FontTemp.mBold.uiFontCode
        return likeNumber
    }()
    private let likeText: UILabel = {
        let likeText = UILabel()
        likeText.text = "Likes"
        likeText.font = FontTemp.mLight.uiFontCode
        likeText.textColor = LabelColor.lightColor.uiColorCode
        return likeText
    }()
    private let bookmarkNumber: UILabel = {
        let bookmarkNumber = UILabel()
        bookmarkNumber.text = "14"
        bookmarkNumber.font = FontTemp.mBold.uiFontCode
        bookmarkNumber.textColor = LabelColor.boldColor.uiColorCode
        return bookmarkNumber
    }()
    private let bookmarkLabel: UILabel = {
        let bookmarkLabel = UILabel()
        bookmarkLabel.text = "Bookmark"
        bookmarkLabel.font = FontTemp.mLight.uiFontCode
        bookmarkLabel.textColor = LabelColor.lightColor.uiColorCode
        return bookmarkLabel
    }()
    private let separatorLineTwo: UILabel = {
        let separatorLine = UILabel()
        separatorLine.frame = CGRect(x: 0, y: 0, width: 365, height: 0)
        separatorLine.backgroundColor = .white
         
        var stroke = UIView()
        stroke.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.center = separatorLine.center
        separatorLine.addSubview(stroke)
        separatorLine.bounds = separatorLine.bounds.insetBy(dx: -0.17, dy: -0.17)
        stroke.layer.borderWidth = 0.33
        stroke.layer.borderColor = UIColor(red: 0.741, green: 0.773, blue: 0.804, alpha: 1).cgColor
        return separatorLine
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(dateNumber)
        addSubview(viewNumber)
        addSubview(viewLabel)
        addSubview(separatorLine)
        addSubview(retweetNumber)
        addSubview(retweetText)
        addSubview(quoteNumber)
        addSubview(quoteText)
        addSubview(likeNumber)
        addSubview(likeText)
        addSubview(bookmarkNumber)
        addSubview(bookmarkLabel)
        addSubview(separatorLineTwo)
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constraints
    private func configureConstraints() {
        dateNumber.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(15)
            make.top.equalToSuperview().offset(10)
        }
        viewNumber.snp.makeConstraints { make in
            make.leading.equalTo(dateNumber.snp.trailing).offset(3)
            make.top.equalTo(dateNumber.snp.top)
        }
        viewLabel.snp.makeConstraints { make in
            make.leading.equalTo(viewNumber.snp.trailing).offset(3)
            make.top.equalTo(dateNumber.snp.top)
        }
        separatorLine.snp.makeConstraints { make in
            make.height.equalTo(0)
            make.leading.equalTo(dateNumber.snp.leading)
            make.trailing.equalToSuperview().offset(-15)
            make.top.equalTo(dateNumber.snp.bottom).offset(10)
        }
        retweetNumber.snp.makeConstraints { make in
            make.top.equalTo(dateNumber.snp.bottom).offset(20)
            make.leading.equalTo(dateNumber.snp.leading)
        }
        retweetText.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(retweetNumber.snp.trailing).offset(3)
        }
        quoteNumber.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(retweetText.snp.trailing).offset(7)
        }
        quoteText.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(quoteNumber.snp.trailing).offset(3)
        }
        likeNumber.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(quoteText.snp.trailing).offset(7)
        }
        likeText.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(likeNumber.snp.trailing).offset(3)
        }
        bookmarkNumber.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(likeText.snp.trailing).offset(7)
        }
        bookmarkLabel.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.top)
            make.leading.equalTo(bookmarkNumber.snp.trailing).offset(3)
            make.bottom.equalToSuperview().offset(-15)
        }
        separatorLineTwo.snp.makeConstraints { make in
            make.top.equalTo(retweetNumber.snp.bottom).offset(10)
            make.leading.equalTo(separatorLine.snp.leading)
            make.trailing.equalTo(bookmarkLabel.snp.trailing)
        }
    }
}
