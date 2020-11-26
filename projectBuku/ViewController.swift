//
//  ViewController.swift
//  projectBuku
//
//  Created by Irfan Fauzan R on 20/11/20.
//  Copyright © 2020 Irfan Fauzan R. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    
    @IBOutlet weak var colletionView: UICollectionView!
    
    //data collection
    let buku = [
        (nama:"Buku Bapakku Indonesia", gambar:"buku9"),
        (nama:"Buku Zaman Perang", gambar:"buku10"),
        (nama:"Buku Senja", gambar:"senja"),
        (nama:"Buku Perang Dunia", gambar:"buku17"),
        (nama:"Buku Cup of Tea", gambar:"buku5"),
        (nama:"Buku Crazy Stupid", gambar:"buku6"),
        (nama:"Majalah Gadis", gambar:"pep"),
        (nama:"Buku Dewasa", gambar:"bapakbagas")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colletionView.dataSource = self
        colletionView.delegate = self
        
    let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        colletionView.setCollectionViewLayout(layout, animated: true)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:1.0, left:1.0, bottom:1.0, right:1.0)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - lay.minimumLineSpacing
        return CGSize(width: widthPerItem, height: 250)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return buku.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colletionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let bukus = buku[indexPath.row]
        cell.cellLabelView.text = bukus.nama
        cell.cellimageView.image = UIImage(named: bukus.gambar)
        return cell
    }
    
    
}

