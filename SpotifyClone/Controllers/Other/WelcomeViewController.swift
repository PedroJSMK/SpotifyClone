//
//  WelcomeViewController.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let signInButton: UIButton = {
    let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Entre no Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSigIn), for: .touchUpInside)
     }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
            signInButton.frame = CGRect(
                x: 20, y: view.height-50-view.safeAreaInsets.bottom,
                width: view.width-40, height: 50)

    }
    
    @objc func didTapSigIn() {
        let vc = AuthViewController()
        vc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
            
        }
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    private func handleSignIn(success: Bool) {
        guard success else {
            let alert = UIAlertController(title: "Ops!!", message: "Algo deu errado aofazer o Login", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Sair", style: .cancel, handler: nil))
            present(alert, animated: true)
            return
        }

        let mainAppTabBarVc = TabBarViewController()
        mainAppTabBarVc.modalPresentationStyle = .fullScreen
        present(mainAppTabBarVc, animated: true)
        
    }
    
}
