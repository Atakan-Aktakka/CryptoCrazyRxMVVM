//
//  WebService.swift
//  CryptoCrazyRxMVVM
//
//  Created by Atakan Aktakka on 16.10.2023.
//

import Foundation

enum CryptoError : Error{
    case serverError
    case parsingError
}

class WebService{
    
    func downloadCurrencies(url: URL, completion : @escaping (Result<[Crypro], CryptoError>) -> ()){
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(.serverError))
            }else if let data = data {
                
                let cryptoList = try? JSONDecoder().decode([Crypro].self, from: data)
                if let cryptoList = cryptoList{
                    completion(.success(cryptoList))
                }else{
                    completion(.failure(.parsingError))
                }
            }
        }.resume()
    }
}
