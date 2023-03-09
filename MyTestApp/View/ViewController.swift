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
        view.backgroundColor = .systemBackground

    }

}

// MARK: - TableView DataSource

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     //   viewModel.dino.count  dino is a property of the cell that is equal to dinoModel
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        viewModel
    }
    
    
}
