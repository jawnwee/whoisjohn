//
//  JLResumeTitleSectionController.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/26/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import UIKit
import IGListKit

class JLResumeTitleSectionController: IGListSectionController, IGListSectionType {
  
  var resumeTitle: String?
  
  func numberOfItems() -> Int {
    return 1
  }
  
  func sizeForItem(at index: Int) -> CGSize {
    return CGSize(width: collectionContext!.containerSize.width, height: 80)
  }
  
  func cellForItem(at index: Int) -> UICollectionViewCell {
    let cell = collectionContext!.dequeueReusableCell(of: JLResumeTitleCollectionViewCell.self, for: self, at: index) as! JLResumeTitleCollectionViewCell
    cell.title = resumeTitle
    return cell
  }
  
  func didUpdate(to object: Any) {
    resumeTitle = object as? String
  }
  
  func didSelectItem(at index: Int) {}

}
