//: Playground - noun: a place where people can play

import Foundation
import PlaygroundSupport

struct Data: Decodable {
    <#properties and methods#>
}

func load() {
    let stringUrl = ""
    guard let url = URL(string: stringUrl) else { return }
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard error == nil else {
            print(error?.localizedDescription ?? "noDesc")
        }
        guard let data = data else { return }
        guard let jsonError = try? JSONDecoder().decode(Data.self, from: data) else {
            print("Error: can't parse")
            return
        }
    }
    task.resume()
}
