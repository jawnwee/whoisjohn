//
//  JLFeaturedWorkSection.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/20/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLFeaturedWorkCollectionSectionController: IGListSectionController, IGListSectionType, IGListAdapterDataSource {

  var loader: JLFeaturedEntryLoader?
  
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
    return CGSize(width: (collectionContext!.containerSize.width), height: 300)
  }
  
  func cellForItem(at index: Int) -> UICollectionViewCell {
    let cell = collectionContext!.dequeueReusableCell(of: JLHorizontalEmbeddedCollectionViewCell.self, for: self, at: index) as! JLHorizontalEmbeddedCollectionViewCell
    cell.collectionView.isPagingEnabled = true
    cell.collectionView.showsHorizontalScrollIndicator = false
    adapter.collectionView = cell.collectionView
    return cell
  }
  
  func didUpdate(to object: Any) {
    loader = object as? JLFeaturedEntryLoader
    loader!.loadLatest()
  }
  
  func didSelectItem(at index: Int) {
  }
  
  //MARK: IGListAdapterDataSource
  
  func objects(for listAdapter: IGListAdapter) -> [IGListDiffable] {
    return loader!.featuredEntries
  }
  
  func listAdapter(_ listAdapter: IGListAdapter, sectionControllerFor object: Any) -> IGListSectionController {
    return JLFeaturedWorkSectionController()
  }
  
  func emptyView(for listAdapter: IGListAdapter) -> UIView? {
    return nil
  }

}
