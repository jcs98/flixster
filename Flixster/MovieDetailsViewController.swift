//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Jainam Chirag Shah on 2/27/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let posterPath = movie["poster_path"] as! String
        let backdropPath = movie["backdrop_path"] as! String
        let posterUrl = URL(string: "https://image.tmdb.org/t/p/w185" + posterPath)
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)

        posterView.af.setImage(withURL: posterUrl!)
        backdropView.af.setImage(withURL: backdropUrl!)
        
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
