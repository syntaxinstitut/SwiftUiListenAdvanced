//
//  POst.swift
//  SwiftUiListenAdvanced
//
//  Created by Till Hemmerich on 05.01.23.
//

import Foundation


struct Post : Identifiable{
    var id = UUID()
    var title : String
    var author : String
    var comments : Array<Comment>
    var date : String
    var showComments : Bool
    
}
