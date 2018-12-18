//
//  ViewController.swift
//  challenge5
//
//  Created by Leandro de Sousa Silva on 12/12/18.
//  Copyright © 2018 AcademyMistic. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var proLeitura = 0.0
      
    override func viewDidLoad() {
        super.viewDidLoad()
  
        //navigationController?.isNavigationBarHidden = true
        initCoreData()
        WCSession.default.transferUserInfo(["":liv])
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return liv.count
    }
  
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCellController
        
        cell.nomedoLivro.text = liv[indexPath.item]
        cell.livro1.image = livImage[indexPath.item]
        
        return cell
    }
   
}

