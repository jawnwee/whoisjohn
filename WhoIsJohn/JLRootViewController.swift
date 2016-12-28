//
//  JLRootViewController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLRootViewController: UIViewController {
  
  let loaders = ["John Lee" as IGListDiffable, JLFeaturedEntryLoader(), JLResumeCategoryLoader()] as [IGListDiffable]

  lazy var adapter: IGListAdapter = {
    return IGListAdapter(updater: IGListAdapterUpdater(), viewController: self, workingRangeSize: 0)
  }()
  
  let collectionView: IGListCollectionView = {
    let collectionView = IGListCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.backgroundColor = UIColor.white
    return collectionView
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = UIColor.black
    view.addSubview(collectionView)
    adapter.collectionView = collectionView
    adapter.dataSource = self
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    self.navigationController?.setNavigationBarHidden(true, animated: false)
    collectionView.frame = view.bounds
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
}

extension JLRootViewController: IGListAdapterDataSource {
  
  func objects(for listAdapter: IGListAdapter) -> [IGListDiffable] {
    return loaders
  }
  
  func listAdapter(_ listAdapter: IGListAdapter, sectionControllerFor object: Any) -> IGListSectionController {
    var listSectionController: IGListSectionController = IGListSectionController()
    if object is String {
      listSectionController = JLResumeTitleSectionController()
    } else if object is JLFeaturedEntryLoader {
      listSectionController = JLFeaturedWorkCollectionSectionController()
    } else if object is JLResumeCategoryLoader {
      listSectionController = JLResumeCategoriesCollectionSectionController()
    }
    return listSectionController
  }
  
  func emptyView(for listAdapter: IGListAdapter) -> UIView? {
    return nil;
  }
  
}
