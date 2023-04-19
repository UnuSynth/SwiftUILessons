//
//  ModelData.swift
//  Landmarks
//
//  Created by Abdyshev Amantay on 19/4/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = JSONLoader.load("landmarkData.json") ?? []
}

enum JSONLoader {
    static func load<T: Decodable>(_ filename: String) -> T? {
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            return nil
        }
        
        guard let data = try? Data(contentsOf: file) else {
            return nil
        }
        
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
