//
//  OllamaKit.swift
//
//
//  Created by Kevin Hermawan on 10/11/23.
//

import Foundation

/// Provides a streamlined way to access the Ollama API, encapsulating the complexities of network communication and data processing.
public struct OllamaKit {
    var router: OKRouter.Type
    var decoder: JSONDecoder = .default
    
    /// Initializes a new instance of `OllamaKit` with the default base URL for the Ollama API and an optional bearer token.
    ///
    /// ```swift
    /// let ollamaKit = OllamaKit()
    /// ```
    /// - Parameter bearerToken: The bearer token to use for API requests.
    public init(bearerToken: String? = nil) {
        let router = OKRouter.self
        router.baseURL = URL(string: "http://localhost:11434")!
        router.bearerToken = bearerToken
        
        self.router = router
    }
    
    /// Initializes a new instance of `OllamaKit` with a custom base URL for the Ollama API and an optional bearer token.
    ///
    /// ```swift
    /// let customBaseURL = URL(string: "https://api.customollama.com")!
    /// let ollamaKit = OllamaKit(baseURL: customBaseURL)
    /// ```
    ///
    /// - Parameters:
    ///   - baseURL: The base URL to use for API requests.
    ///   - bearerToken: The bearer token to use for API requests.
    public init(baseURL: URL, bearerToken: String? = nil) {
        let router = OKRouter.self
        router.baseURL = baseURL
        router.bearerToken = bearerToken
        self.router = router
    }
}
