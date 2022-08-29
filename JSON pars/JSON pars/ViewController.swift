//
//  ViewController.swift
//  JSON pars
//
//  Created by Александр Пархамович on 29.08.22.
//

import UIKit

 class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://swapi.dev/api/people/4/"
        guard let url = URL(string: urlString)
        else{
            return}
        
        URLSession.shared.dataTask(with: url) { data, responce, error in
            if let error = error{
                print(error)
                return
            }
            guard let data = data
            else {
                return
            }
            
            do{
                let Jedi = try JSONDecoder().decode(Jedi.self, from: data)
                print(Jedi.name)
                
            }catch{
            print(error)
            }
            
        }.resume()

    }


}

