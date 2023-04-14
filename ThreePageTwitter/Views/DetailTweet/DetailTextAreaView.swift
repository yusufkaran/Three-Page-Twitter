//
//  DetailTextAreaView.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 13.04.2023.
//

import UIKit

class DetailTextAreaView: UIView {
    // MARK: Components
    private let profilePic: UIButton = {
        let profilePic = UIButton()
        profilePic.setImage(UIImage(named: "karan"), for: .normal)
        profilePic.clipsToBounds = true
        profilePic.layer.cornerRadius = 25
        return profilePic
    }()
    private let userName: UILabel = {
        let userName = UILabel()
        userName.text = "Yusuf Karan"
        userName.textAlignment = .center
        userName.font = FontTemp.sBold.uiFontCode
        userName.textColor = LabelColor.boldColor.uiColorCode
        return userName
    }()
    private let nickName: UILabel = {
        let nickName = UILabel()
        nickName.text = "@yusufkaranx"
        nickName.textAlignment = .center
        nickName.textColor = LabelColor.lightColor.uiColorCode
        nickName.font = FontTemp.sMedium.uiFontCode
        return nickName
    }()
    private let tweetLabel: UILabel = {
        let tweetLabel = UILabel()
        tweetLabel.text = "14 Mayis'ta secimleri kazanacagiz. Erdogan hukumeti bitecek. Topluma refah gelecek. Herkes o gun sandiklara gitmeli, oy kullanmali. Bir oy bir oydur."
        tweetLabel.textAlignment = .left
        tweetLabel.font = FontTemp.sLight.uiFontCode
        tweetLabel.textColor = LabelColor.boldColor.uiColorCode
        tweetLabel.numberOfLines = 0
        return tweetLabel
    }()
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profilePic)
        addSubview(userName)
        addSubview(nickName)
        addSubview(tweetLabel)
        configureConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constraints
    private func configureConstraints() {
        profilePic.snp.makeConstraints { make in
            make.height.width.equalTo(50)
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().offset(15)
        }
        userName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(18)
            make.leading.equalTo(profilePic.snp.trailing).offset(12)
        }
        nickName.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(1)
            make.leading.equalTo(profilePic.snp.trailing).offset(12)
        }
        tweetLabel.snp.makeConstraints { make in
            make.top.equalTo(profilePic.snp.bottom).offset(15)
            make.leading.equalTo(profilePic.snp.leading)
            make.trailing.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(-15)
        }
    }

}
