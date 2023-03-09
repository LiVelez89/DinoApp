//
//  ViewController.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    let viewModel = DinoViewModel()
    
    // Components
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        viewModel.getDino()
        setUpTableView()

    }
    func setUpTableView() {
        tableView.dataSource = self
        tableView.register(DinoTableViewCell.self, forCellReuseIdentifier: DinoTableViewCell.reuseID)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

// MARK: - TableView DataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.dino.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        viewModel.buildTableCell(with: viewModel.dino[indexPath.row])
    }
    
    
}
