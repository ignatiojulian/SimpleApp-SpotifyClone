//
//  AuthManager.swift
//  new-iOS-Spotify
//
//  Created by Ignatio Julian on 26/05/21.
//

import Foundation


final class AuthManager {
    static let shared = AuthManager()
    
    struct Constant {
        static let clientID = "d49cff33cd4e4a7d8600969daeaba182"
        static let clientSecret = "2a6cdfcd26ad49f392f885fdcb976122"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.ignatiojulian.me/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constant.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: String? {
        return nil
    }
    
    public func exchangeCodeForToken(code: String, completion: @escaping (Bool) -> Void) {
        // Get token
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
