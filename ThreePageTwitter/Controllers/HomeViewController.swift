//
//  ViewController.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 11.04.2023.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(TweetTableViewCell.self, forCellReuseIdentifier: TweetTableViewCell.identifier)
        return tableView
    }()
    
    private func configureNavigationBar() {
        let profileImage = UIImage(systemName: "person")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: profileImage, style: .plain, target: self, action: #selector(navigateToDetailView))
        
        let logoImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.image = UIImage(named: "twitter")
        let middleView = UIView(frame: CGRect(x: 0, y: 0, width: 22, height: 22))
        middleView.addSubview(logoImageView)
        navigationItem.titleView = middleView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        configureNavigationBar()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    @objc func navigateToDetailView() {
        let detailTweetView = DetailTweetViewController()
        navigationController?.pushViewController(detailTweetView, animated: true)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TweetTableViewCell.identifier, for: indexPath)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigateToDetailView()
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 500
//    }
}
