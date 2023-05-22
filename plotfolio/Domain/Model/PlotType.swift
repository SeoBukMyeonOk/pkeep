//
//  PlotType.swift
//  plotfolio
//
//  Created by 송영모 on 2023/05/21.
//

import Foundation

enum PlotType: String, CaseIterable {
    case movie
    case book
    case exhibition
    case concert
    case music
    case food
    case place
    case media
    case etc = "etc."
    
    var int16: Int16 {
        return Int16(PlotType.allCases.firstIndex(of: self) ?? 0)
    }
}
