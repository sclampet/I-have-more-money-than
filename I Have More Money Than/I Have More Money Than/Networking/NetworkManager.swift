//
//  File.swift
//  I Have More Money Than
//
//  Created by Scott Clampet on 9/6/19.
//  Copyright © 2019 Scott Clampet. All rights reserved.
//

import Foundation

enum BaseURL: String {
    case allAccounts = "https://glacial-bayou-77287.herokuapp.com/listAccountss"
}

class NetworkManager {
    var session: URLSession?
    
    func getAccounts(from baseURL: BaseURL, completion: @escaping (Result<[Account], Error>) -> Void) {
        guard let url = URL(string: baseURL.rawValue) else { return }
        //session for unit testing
        if let session = session {
            session.dataTask(with: url) { (_, _, _) in }
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            //error
            if let err = error {
                completion(.failure(err))
                return
            }
            
            //success
            do {
                let accounts = try JSONDecoder().decode([Account].self, from: data!)
                completion(.success(accounts))
            } catch let jsonError {
                completion(.failure(jsonError))
            }
        }
        task.resume()
    }
}
