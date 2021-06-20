//
//  ViewController.swift
//  DicTest
//
//  Created by Christian Higgins on 6/19/21.
//

import UIKit

struct InvasionList: Decodable {
    let type: String
    let asOf: Int?
    let progress: String?
    
    
}

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let jsonUrlString = "https://www.toontownrewritten.com/api/invasions"
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            guard let data = data else {return }
            
            do {
                let invasions = try JSONDecoder().decode(InvasionList.self, from: data)
                print(invasions.type)
            
            
            } catch let err {
                print(err)
            }
            
            
            }.resume()
        
    }


}

