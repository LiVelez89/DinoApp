//
//  DinoViewModel.swift
//  MyTestApp
//
//  Created by Lina on 9/03/23.
//

import Foundation

final class DinoViewModel {
    
    let networkManager = NetworkManager()
    let dino: [DinoModel] = []
    
    
    func getDino() {
        
    }
    
    func buildTableCell(with cat: DinoModel) -> DinoTableViewCell  {
        
        let cell = DinoTableViewCell()
        return cell
    }
}
