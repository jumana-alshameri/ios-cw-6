//
//  MoviesMasterVC.swift
//  Classwork6
//
//  Created by jumana alshameri on 7/1/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MoviesMasterVC: UIViewController {
    
    var marvelImages = MarvelMovieData
    var dcImages = DCMovieData
    var selectedMovie: Movie = Movie(movieName: "",  movieReleaseDate: 2000, actors: [""], rating: 0.0, pgRating: "PG")
    
    @IBOutlet weak var marvelBtn0: UIButton!
    @IBOutlet weak var marvelBtn1: UIButton!
    @IBOutlet weak var marvelBtn2: UIButton!
    @IBOutlet weak var marvelBtn3: UIButton!
    @IBOutlet weak var marvelBtn4: UIButton!
    @IBOutlet weak var marvelBtn5: UIButton!
    
    @IBOutlet weak var dcBtn0: UIButton!
    @IBOutlet weak var dcBtn1: UIButton!
    @IBOutlet weak var dcBtn2: UIButton!
    @IBOutlet weak var dcBtn3: UIButton!
    @IBOutlet weak var dcBtn4: UIButton!
    @IBOutlet weak var dcBtn5: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMarvelImages()
        setDCImages()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        guard let movieController = segue.destination as? MovieDetailsVC else {
            fatalError()
        }
        movieController.movieData = selectedMovie
    }
    
    func setMarvelImages(){
        marvelBtn0.setBackgroundImage(UIImage(named: marvelImages[0].movieName), for: .normal)
        marvelBtn1.setBackgroundImage(UIImage(named: marvelImages[1].movieName), for: .normal)
        marvelBtn2.setBackgroundImage(UIImage(named: marvelImages[2].movieName), for: .normal)
        marvelBtn3.setBackgroundImage(UIImage(named: marvelImages[3].movieName), for: .normal)
        marvelBtn4.setBackgroundImage(UIImage(named: marvelImages[4].movieName), for: .normal)
        marvelBtn5.setBackgroundImage(UIImage(named: marvelImages[5].movieName), for: .normal)
    }
    
    func setDCImages(){
    dcBtn0.setBackgroundImage(UIImage(named: dcImages[0].movieName), for: .normal)
    dcBtn1.setBackgroundImage(UIImage(named: dcImages[1].movieName), for: .normal)
    dcBtn2.setBackgroundImage(UIImage(named: dcImages[2].movieName), for: .normal)
    dcBtn3.setBackgroundImage(UIImage(named: dcImages[3].movieName), for: .normal)
    dcBtn4.setBackgroundImage(UIImage(named: dcImages[4].movieName), for: .normal)
    dcBtn5.setBackgroundImage(UIImage(named: dcImages[5].movieName), for: .normal)
    }

    
    @IBAction func marvelBtns(_ sender: UIButton) {
        selectedMovie = MarvelMovieData[sender.tag]
        performSegue(withIdentifier: "goToMovieDetail", sender: selectedMovie)
    }
    
    
    @IBAction func DCBtns(_ sender: UIButton) {
        selectedMovie = DCMovieData[sender.tag]
         performSegue(withIdentifier: "goToMovieDetail", sender: selectedMovie)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
