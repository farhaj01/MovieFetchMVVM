//
//  MovieVM.swift
//  MoviesListFetch
//
//  Created by tbs on 18/05/2022.
//

import UIKit
protocol MovieVMProtocol {
    func viewDidLoad()
    func getNumberOfRows() -> Int
    func getMovieList() -> [Movie]
    func showError()
}

class MovieVM: MovieVMProtocol {

    private var movieNetwork: MovieNetworkProtocol!
    private var movieList: [Movie] = []
    
    
    init(movieNetwork: MovieNetworkProtocol) {
        self.movieNetwork = movieNetwork
    }
    
    func getNumberOfRows() -> Int {
        return movieList.count
    }
    
    func getMovieList() -> [Movie]{
        movieNetwork.fetchMovies()
        return movieList
    }
    
    func showError() {
        print("show error")
    }
    
    
    func viewDidLoad() {
        // Do any additional setup after loading the view.
    }
}


