//
//  ViewController.swift
//  MoviesListFetch
//
//  Created by tbs on 17/05/2022.
//

import UIKit

class MovieVC: UIViewController {
    
    var movieVM: MovieVMProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieVM?.viewDidLoad()
    }
}

