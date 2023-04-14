//
//  DetailViewController.swift
//  ThreePageTwitter
//
//  Created by Yusuf Karan on 11.04.2023.
//

import UIKit

class DetailTweetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // MARK: TableView
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(DetailTweetTableViewCell.self, forCellReuseIdentifier: DetailTweetTableViewCell.identifier)
        return tableView
    }()
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    // MARK: TableView Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTweetTableViewCell.identifier, for: indexPath)
        return cell
    }

}
