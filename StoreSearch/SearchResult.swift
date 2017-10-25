//
//  SearchResult.swift
//  StoreSearch
//
//  Created by KELVIN LING SHENG SIANG on 21/10/2017.
//  Copyright © 2017 KELVIN LING SHENG SIANG. All rights reserved.
//

class SearchResult {
    var name = ""
    var artistName = ""
    var artworkSmallURL = ""
    var artworkLargeURL = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""
}

// operator overloading
func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == .orderedAscending
}
