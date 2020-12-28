//
//  ViewController.swift
//  Butterflies
//
//  Created by Evelyn Hasama on 12/28/20.
//

import UIKit

class ViewController: UIViewController {
    
    var quoteod: String!
    
    @IBOutlet weak var qod: UILabel!

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    @IBOutlet weak var image3: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        var request = URLRequest(url: URL(string: "https://quotes.rest/qod")!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request, completionHandler: { data, response, error -> Void in
            do {
                print(data!)
                print(response!)
                let jsonDecoder = JSONDecoder()
                // Access the response here by using json model class
                // You can autogenerate Json4Swift_Base swift class below by pasting the JSON response in
                // the webpage http://www.json4swift.com
                let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
                print(responseModel)
                print(responseModel.contents?.quotes?.first!.quote as Any)
                self.quoteod = responseModel.contents?.quotes?.first!.quote
                
                self.Setquote()
            } catch {
                print("JSON Serialization error")
            }
        }).resume()
        
        
        image1.layer.cornerRadius = 15
        image2.layer.cornerRadius = 15
        image3.layer.cornerRadius = 15
    }
    func Setquote(){
        DispatchQueue.main.async {
            self.qod.text = self.quoteod
        }
    }

}


