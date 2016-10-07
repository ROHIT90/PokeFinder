//
//  PokeAnnotation.swift
//  PokeFinder
//
//  Created by Fnu, Rohit on 9/25/16.
//  Copyright © 2016 Fnu, Rohit. All rights reserved.
//

import Foundation
import MapKit

class PokeAnnotation: NSObject, MKAnnotation {
    var coordinate = CLLocationCoordinate2D()
    var pokemonNumber: Int
    var pokemonName: String
    var title: String?
    
    var pokeNameClass: PokeNames = PokeNames() //Create object of ParseJson
    
    var pokeName: NSArray = NSArray()


    
    init(coordinate: CLLocationCoordinate2D, pokemonNumber: Int) {
        pokeName = pokeNameClass.pokemon as NSArray
        
        self.coordinate = coordinate
        self.pokemonNumber = pokemonNumber
        self.pokemonName = (pokeName[pokemonNumber + 1] as AnyObject).capitalized
        self.title = self.pokemonName
    }
    
}
