//
//  ProfileTableViewHeader.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 14.04.2023.
//

import UIKit
import SnapKit

class ProfileTableViewHeader: UIView {
    // MARK: Components
    private let profileHeaderImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "koycegizHeader")
        imageView.clipsToBounds = true
        return imageView
    }()
    private let profileAvatarImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.layer.masksToBounds = true
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 40
        imageView.image = UIImage(named: "karan")
        imageView.backgroundColor = .systemBackground
        return imageView
    }()
    private let followButton: UIButton = {
        let button = UIButton()
        button.setTitle("   Follow   ", for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 17
        button.addTarget(self, action: #selector(followButtonTapped), for: .touchUpInside)
        button.layer.masksToBounds = true
        return button
    }()
    private let messageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "envelope.fill"), for: .normal)
        button.tintColor = .white
        button.backgroundColor = .black
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        return button
    }()
    private let notificationButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "bell.fill"), for: .normal)
        button.tintColor = .white
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(notificationButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 17
        button.layer.masksToBounds = true
        return button
    }()
    var isBellCircle = false
    
    private let displayNameLabel: UILabel = {
       let label = UILabel()
        label.text = "Yusuf Karan"
        label.font  = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .label
        return label
    }()
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = "@yusufkaranx"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    private let userBioLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 3
        label.textColor = .label
        label.numberOfLines = 0
        label.text = "iOS Developer"
        return label
    }()
    private let locationLabel: UILabel = {
        let attachment = NSTextAttachment()
        let config = UIImage.SymbolConfiguration(scale: .small)
        attachment.image = UIImage(systemName: "location", withConfiguration: config)
        
        let imageString = NSMutableAttributedString(attachment: attachment)
        let textString = NSAttributedString(string: "Koycegiz, Mugla")
        imageString.append(textString)
        
        let locationLabel = UILabel()
        locationLabel.attributedText = imageString
        locationLabel.sizeToFit()
        locationLabel.textColor = LabelColor.lightColor.uiColorCode
        locationLabel.font = FontTemp.profileItem.uiFontCode
        return locationLabel
    }()
    
    private let link: UILabel = {
        let attachment = NSTextAttachment()
        let config = UIImage.SymbolConfiguration(scale: .small)
        attachment.image = UIImage(systemName: "link", withConfiguration: config)
        
        let linkString = NSMutableAttributedString(attachment: attachment)
        let textString = NSAttributedString(string: " bento.me/yusufkaran")
        linkString.append(textString)
        
        let link = UILabel()
        link.attributedText = linkString
        link.font = FontTemp.profileItem.uiFontCode
        link.textColor = UIColor(red: 0.29, green: 0.60, blue: 0.91, alpha: 1.00)
        return link
    }()
    private let birthdayDate: UILabel = {
        let attachment = NSTextAttachment()
        let config = UIImage.SymbolConfiguration(scale: .small)
        attachment.image = UIImage(systemName: "balloon", withConfiguration: config)
        
        let balloonString = NSMutableAttributedString(attachment: attachment)
        let textString = NSAttributedString(string: " Doğum tarihi: 7 Aralık")
        balloonString.append(textString)
        
        let birthdayDate = UILabel()
        birthdayDate.attributedText = balloonString
        birthdayDate.textColor = LabelColor.lightColor.uiColorCode
        birthdayDate.font = FontTemp.profileItem.uiFontCode
        return birthdayDate
    }()
    private let accountDate: UILabel = {
        let attachment = NSTextAttachment()
        let config = UIImage.SymbolConfiguration(scale: .small)
        attachment.image = UIImage(systemName: "calendar", withConfiguration: config)
        
        let calendarString = NSMutableAttributedString(attachment: attachment)
        let textString = NSAttributedString(string: " Mart 2016 tarihinde katıldı")
        calendarString.append(textString)
        
        let accountDate = UILabel()
        accountDate.attributedText = calendarString
        accountDate.font = FontTemp.profileItem.uiFontCode
        accountDate.textColor = LabelColor.lightColor.uiColorCode
        return accountDate
    }()
    private let followersTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Follower"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let followersCountLabel: UILabel = {
        let label = UILabel()
        label.text = "563"
        label.textColor = .label
        label.font = .systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private let followingTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Following"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let followingCountLabel: UILabel = {
        let label = UILabel()
        label.text = "314"
        label.textColor = .label
        label.font = .systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    private var tabs: [UIButton] = ["Tweets", "Tweets & Replies", "Media", "Likes"]
        .map { buttonTitle in
            let button = UIButton(type: .system)
            button.setTitle(buttonTitle, for: .normal)
            button.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
            button.tintColor = .label
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }
    private lazy var sectionStack: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: tabs)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.alignment = .center
        return stackView
    }()
    // MARK: @objc Button Action Func
    @objc func followButtonTapped() {
            // Butona tıklandığında yapılacak işlemler
            if followButton.title(for: .normal) == "   Follow   " {
                followButton.setTitle("   Following   ", for: .normal)
                followButton.backgroundColor = .white
                followButton.setTitleColor(.black, for: .normal)
                followButton.layer.borderWidth = 1
                followButton.layer.borderColor = UIColor.black.cgColor
            } else {
                followButton.setTitle("   Follow   ", for: .normal)
                followButton.backgroundColor = .black
                followButton.setTitleColor(.white, for: .normal)

            }
        }
    @objc func notificationButtonTapped() {
            // Butona tıklandığında yapılacak işlemler
        if isBellCircle {
                    let newImage = UIImage(systemName: "bell.fill")
                    notificationButton.setImage(newImage, for: .normal)
                    notificationButton.backgroundColor = .black
                    notificationButton.tintColor = .white
                } else {
                    let newImage = UIImage(systemName: "bell.badge")
                    notificationButton.setImage(newImage, for: .normal)
                    notificationButton.setTitleColor(.black, for: .normal)
                    notificationButton.tintColor = .black
                    notificationButton.backgroundColor = .white
                    notificationButton.layer.borderWidth = 1
                    notificationButton.layer.borderColor = UIColor.black.cgColor
                }
                isBellCircle = !isBellCircle
        }
    // MARK: Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(profileHeaderImageView)
        addSubview(profileAvatarImageView)
        addSubview(displayNameLabel)
        addSubview(usernameLabel)
        addSubview(userBioLabel)
        addSubview(locationLabel)
        addSubview(link)
        addSubview(birthdayDate)
        addSubview(accountDate)
        addSubview(followingCountLabel)
        addSubview(followingTextLabel)
        addSubview(followersTextLabel)
        addSubview(followersCountLabel)
        addSubview(sectionStack)
        addSubview(followButton)
        addSubview(messageButton)
        addSubview(notificationButton)
        configureConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: Configure Constrains
    private func configureConstraints() {
        
        profileHeaderImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(150)
        }
        profileAvatarImageView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.centerY.equalTo(profileHeaderImageView.snp.bottom).offset(10)
            make.height.width.equalTo(80)
        }
        followButton.snp.makeConstraints { make in
            make.top.equalTo(profileHeaderImageView.snp.bottom).offset(7)
            make.trailing.equalToSuperview().offset(-20)
        }
        messageButton.snp.makeConstraints { make in
            make.centerY.equalTo(followButton)
            make.trailing.equalTo(followButton.snp.leading).offset(-5)
            make.height.equalTo(followButton)
            make.width.equalTo(messageButton.snp.height)
        }
        notificationButton.snp.makeConstraints { make in
            make.centerY.equalTo(followButton)
            make.trailing.equalTo(messageButton.snp.leading).offset(-5)
            make.height.width.equalTo(messageButton)
        }
        displayNameLabel.snp.makeConstraints { make in
            make.top.equalTo(profileAvatarImageView.snp.bottom).offset(12)
            make.leading.equalTo(profileAvatarImageView.snp.leading)
        }
        usernameLabel.snp.makeConstraints { make in
            make.top.equalTo(displayNameLabel.snp.bottom)
            make.leading.equalTo(profileAvatarImageView.snp.leading)
        }
        userBioLabel.snp.makeConstraints { make in
            make.top.equalTo(usernameLabel.snp.bottom).offset(14)
            make.leading.equalTo(profileAvatarImageView.snp.leading)
            make.trailing.equalToSuperview().offset(-20)
        }
        locationLabel.snp.makeConstraints { make in
            make.top.equalTo(userBioLabel.snp.bottom).offset(10)
            make.leading.equalTo(profileAvatarImageView.snp.leading)
        }
        link.snp.makeConstraints { make in
            make.centerY.equalTo(locationLabel.snp.centerY)
            make.leading.equalTo(locationLabel.snp.trailing).offset(10)
        }
        birthdayDate.snp.makeConstraints { make in
            make.top.equalTo(locationLabel.snp.bottom).offset(7)
            make.leading.equalTo(profileAvatarImageView.snp.leading)
        }
        accountDate.snp.makeConstraints { make in
            make.centerY.equalTo(birthdayDate.snp.centerY)
            make.leading.equalTo(birthdayDate.snp.trailing).offset(10)
        }
        followersCountLabel.snp.makeConstraints { make in
            make.top.equalTo(birthdayDate.snp.bottom).offset(12)
            make.leading.equalTo(userBioLabel.snp.leading)
        }
        followersTextLabel.snp.makeConstraints { make in
            make.top.equalTo(birthdayDate.snp.bottom).offset(12)
            make.leading.equalTo(followersCountLabel.snp.trailing).offset(2)
        }
        followingCountLabel.snp.makeConstraints { make in
            make.top.equalTo(birthdayDate.snp.bottom).offset(12)
            make.leading.equalTo(followersTextLabel.snp.trailing).offset(6)
        }
        followingTextLabel.snp.makeConstraints { make in
            make.top.equalTo(birthdayDate.snp.bottom).offset(12)
            make.leading.equalTo(followingCountLabel.snp.trailing).offset(2)
        }
        sectionStack.snp.makeConstraints { make in
            make.top.equalTo(followingCountLabel.snp.bottom).offset(7)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.height.equalTo(35)
        }
        
    }
}
