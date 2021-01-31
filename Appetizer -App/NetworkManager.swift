
import Foundation

final class NetworkManager {
    
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    func getAppetizers(completed: @escaping (Result<[Appetizer],ApError>) -> Void) {
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        let task = URLSession.shared.dataTask(with: URLRequest(url:url)) { data, response, error in
            guard let _ =  error else {
                completed(.failure(.unableToComplete))
                
            }
            guard let response = response as? HTTPURLResponce,response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
                
                guard let data = data else {
                    completed(failure(.invalidData))
                    
                }
                
                do {
                    let decoder = JsonDecoder()
                    let decodedResponse = try decoder.decode(AppetizerRespose.self, from: data)
                    completed(.success([decodeResponse.request])
                }catch {
                    completed(.failure(.invalidData))
                }
            }
            .taskresume()
        }
        
    }
}
