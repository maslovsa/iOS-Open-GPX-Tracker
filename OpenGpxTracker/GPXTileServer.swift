//
//  GPXTileServer.swift
//  OpenGpxTracker
//
//  Created by merlos on 25/01/15.
//  Copyright (c) 2015 TransitBox. All rights reserved.
//

import Foundation

enum GPXTileServer: Int {
    case apple
    case openStreetMap
    //case MapQuest
    case openCycleMap
    //case AnotherMap
    case cartoDB
    
    
    var name: String {
        switch self {
        case .apple: return "Apple Mapkit"
        case .openStreetMap: return "Open Street Map"
        //case .MapQuest: return "MapQuest Open"
        case .openCycleMap: return "Open Cycle Maps"
        case .cartoDB: return "Carto DB"
        //case .AnotherMap: return "My Map"
        }
    }

    var templateUrl: String {
        switch self {
        case .apple: return ""
        case .openStreetMap: return "http://tile.openstreetmap.org/{z}/{x}/{y}.png"
        //case .MapQuest: return "http://otile3.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.jpg"
        case .openCycleMap: return "http://b.tile.opencyclemap.org/cycle/{z}/{x}/{y}.png"
        case .cartoDB: return "http://b.basemaps.cartocdn.com/light_all/{z}/{x}/{y}.png"
        
        //case .AnotherMap: return "http://another.map.tile.server/{z}/{x}/{y}.png"
        }
    }
    static var count: Int { return GPXTileServer.cartoDB.hashValue + 1}
}
