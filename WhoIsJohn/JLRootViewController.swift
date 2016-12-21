//
//  JLRootViewController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit

class JLRootViewController: UIViewController {
  
  let featuredEntryLoader = FeaturedEntryLoader()
  let resumeCategoryLoader = ResumeCategoryLoader()
  
  let resumeCollectionView: UICollectionView = {
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.backgroundColor = UIColor.white
    return collectionView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    featuredEntryLoader.loadLatest()
    resumeCategoryLoader.loadLatest()
    view.addSubview(resumeCollectionView)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
}

extension JLRootViewController: UICollectionViewDataSource {
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 0
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    return UICollectionViewCell()
  }
  
}

extension JLRootViewController: UICollectionViewDelegateFlowLayout {
  
  
}
