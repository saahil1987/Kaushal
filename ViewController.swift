//
//  ViewController.swift
//  Pratice of Api cards
//
//  Created by yapapp on 22/08/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    var TrumpGame = [Cards]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        }
    func cardAPI(){
        let url = URL(string: "https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1")!
        var req = URLRequest(url:url)
        req.httpMethod = "get"
        AF.request(req).responseDecodable { response in
            
            switch response. result{
            case.success(let data):
                print(data)
            }
        }
        
    }


}

