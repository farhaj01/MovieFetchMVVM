//
//  Builder.swift
//  MoviesListFetch
//
//  Created by tbs on 18/05/2022.
//

import Foundation
import UIKit


class Builder {
    static func build() -> MovieVC {
        let movieNetwork = MovieNetworkService()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        var movieVC = storyboard.instantiateViewController(withIdentifier: "MovieVC") as! MovieVC
        
        let movieVM = MovieVM(movieNetwork: movieNetwork)
        movieVC.movieVM = movieVM
        
        return movieVC
    }
}
