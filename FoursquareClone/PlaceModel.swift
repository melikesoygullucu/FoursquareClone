//
//  PlaceModel.swift
//  FoursquareClone
//
//  Created by Melike Soygüllücü on 14.07.2024.
//

import Foundation
import UIKit

class PlaceModel {
    // Singleton
    static let sharedInstance = PlaceModel()
    
    var placeName = ""
    var placeType = ""
    var placeExplanation = ""
    var placeImage = UIImage()
    
    private init (){}
}
