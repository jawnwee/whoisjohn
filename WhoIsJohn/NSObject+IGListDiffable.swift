//
//  NSObject+IGListDiffable.swift
//  WhoIsJohn
//
//  Created by John Lee on 12/22/16.
//  Copyright © 2016 JungYeonLee. All rights reserved.
//

import Foundation
import IGListKit

// MARK: - IGListDiffable
extension NSObject: IGListDiffable {
  
  public func diffIdentifier() -> NSObjectProtocol {
    return self
  }
  
  public func isEqual(toDiffableObject object: IGListDiffable?) -> Bool {
    return isEqual(object)
  }
  
}

