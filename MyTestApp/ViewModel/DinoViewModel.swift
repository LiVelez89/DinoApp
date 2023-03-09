//
//  DinoViewModel.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import Foundation

final class DinoViewModel {
    
    let networkManager = NetworkManager()
    var dino: [DinoModel] = []
    
    
    func getDino() {
        networkManager.makeRequest(type: [DinoModel].self) { [weak self] result in
            guard let self = self else { return }
            
            DispatchQueue.main.async {
                switch result {
                case .success(let dinoResult):
                    self.dino = dinoResult
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    func buildTableCell(with dino: DinoModel) -> DinoTableViewCell  {
        
        let cell = DinoTableViewCell()
        cell.dinoName.text = dino.name
        return cell
    }
}
