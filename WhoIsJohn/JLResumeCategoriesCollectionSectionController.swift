//
//  JLResumeCategoriesCollectionSectionController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLResumeCategoriesCollectionSectionController: IGListSectionController, IGListSectionType, IGListAdapterDataSource {
  
  var loader: JLResumeCategoryLoader?
  
  lazy var adapter:IGListAdapter = {
    let adapter = IGListAdapter(updater: IGListAdapterUpdater(),
                                viewController: self.viewController,
                                workingRangeSize: 0)
    adapter.dataSource = self
    return adapter
  }()
  
  func numberOfItems() -> Int {
    return 1
  }
  
  func sizeForItem(at index: Int) -> CGSize {
    // Height: container - resumeTitleSectionHeight - featuredWorkSectionHeight
    return CGSize(width: (collectionContext!.containerSize.width), height: collectionContext!.containerSize.height - 380)
  }
  
  func cellForItem(at index: Int) -> UICollectionViewCell {
    let cell = collectionContext!.dequeueReusableCell(of: JLResumeCategoriesEmbeddedCollectionViewCell.self, for: self, at: index) as! JLResumeCategoriesEmbeddedCollectionViewCell
    adapter.collectionView = cell.collectionView
    return cell
  }
  
  func didUpdate(to object: Any) {
    loader = object as? JLResumeCategoryLoader
    loader!.loadLatest()
  }
  
  func didSelectItem(at index: Int) {
  }
  
  //MARK: IGListAdapterDataSource
  
  func objects(for listAdapter: IGListAdapter) -> [IGListDiffable] {
    return loader!.categories
  }
  
  func listAdapter(_ listAdapter: IGListAdapter, sectionControllerFor object: Any) -> IGListSectionController {
    return JLResumeCategorySectionController()
  }
  
  func emptyView(for listAdapter: IGListAdapter) -> UIView? {
    return nil
  }
}
