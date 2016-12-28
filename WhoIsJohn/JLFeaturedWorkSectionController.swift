//
//  JLFeaturedWorkSectionController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/23/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLFeaturedWorkSectionController: IGListSectionController, IGListSectionType {
  
  var featuredEntry: JLFeaturedEntry?
  
  override init() {
    super.init()
    self.inset = UIEdgeInsetsMake(0, 0, 0, 5)
  }
  
  func numberOfItems() -> Int {
    return 1
  }
  
  func sizeForItem(at index: Int) -> CGSize {    
    return CGSize(width: collectionContext!.containerSize.width - 30, height: 300)
  }
  
  func cellForItem(at index: Int) -> UICollectionViewCell {
    let cell = collectionContext!.dequeueReusableCell(of: JLFeaturedWorkCollectionViewCell.self, for: self, at: index) as! JLFeaturedWorkCollectionViewCell
    cell.title = featuredEntry?.title
    cell.subtitle = featuredEntry?.subtitle
    cell.date = featuredEntry?.date
    cell.image = featuredEntry?.image
    return cell
  }
  
  func didUpdate(to object: Any) {
    featuredEntry = object as? JLFeaturedEntry
  }
  
  func didSelectItem(at index: Int) {}

}
