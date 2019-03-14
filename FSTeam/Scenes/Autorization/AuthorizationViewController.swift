//
//  AuthorizationViewController.swift
//  FSTeam
//
//  Created by Timur Shafigullin on 28/02/2019.
//  Copyright © 2019 Flatstack. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class AuthorizationViewController: UIViewController {

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance().delegate = self
        GIDSignIn.sharedInstance().uiDelegate = self
    }

    // MARK: - Instance Methods

    private func firebaseSignIn(with idToken: String, and accessToken: String) {
        let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                       accessToken: accessToken)

        Auth.auth().signInAndRetrieveData(with: credential) { (authResult, error) in
            if let error = error {
                // ...
                return
            }
            // User is signed in
            // ...
        }
    }
}

// MARK: - GIDSignInDelegate

extension AuthorizationViewController: GIDSignInDelegate {

    // MARK: - Instance Methods

    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        if let error = error {
            // ...
            return
        }

        guard let authentication = user.authentication else {
            return
        }

        self.firebaseSignIn(with: authentication.idToken, and: authentication.accessToken)
    }
}

// MARK: - GIDSignInUIDelegate

extension AuthorizationViewController: GIDSignInUIDelegate { }
