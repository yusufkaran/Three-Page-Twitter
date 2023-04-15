//
//  ProfileViewController.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 11.04.2023.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let profileTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.identifier)
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Profile"
        view.addSubview(profileTableView)
        let headerView = ProfileTableViewHeader(frame: CGRect(x: 0, y: 0, width: profileTableView.frame.width, height: 415))
        
        profileTableView.delegate = self
        profileTableView.dataSource = self
        profileTableView.tableHeaderView = headerView
        profileTableView.contentInsetAdjustmentBehavior = .never
//        navigationController?.navigationBar.isHidden = true
        configureConstraints()
    }
    @objc func navigateToDetailView() {
        let detailTweetView = DetailTweetViewController()
        navigationController?.pushViewController(detailTweetView, animated: true)
    }
    
    private func configureConstraints() {
        profileTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TweetTableViewCell.identifier, for: indexPath) as?
                TweetTableViewCell else { return UITableViewCell()
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToDetailView()
    }
}
