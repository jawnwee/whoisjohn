//
//  JLResumeCategorySectionController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/26/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLResumeCategorySectionController: IGListSectionController, IGListSectionType {

  var category: JLResumeCategory?
  
  override init() {
    super.init()
  }
  
  func numberOfItems() -> Int {
    return 1
  }
  
  func sizeForItem(at index: Int) -> CGSize {
    return CGSize(width: collectionContext!.containerSize.width, height: 50)
  }
  
  func cellForItem(at index: Int) -> UICollectionViewCell {
    let cell = collectionContext!.dequeueReusableCell(of: JLResumeCategoryCollectionViewCell.self, for: self, at: index) as! JLResumeCategoryCollectionViewCell
    cell.category = category?.title
    return cell
  }
  
  func didUpdate(to object: Any) {
    category = object as? JLResumeCategory
  }
  
  func didSelectItem(at index: Int) {}
  
}
