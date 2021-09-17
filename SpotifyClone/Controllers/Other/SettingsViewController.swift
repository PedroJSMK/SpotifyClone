//
//  SettingsViewController.swift
//  SpotifyClone
//
//  Created by PedroJSMK on 15/09/21.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        return tableView
    }()

    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureModels()
        title  = "Settings"
        view.backgroundColor = .systemBackground
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
     }
    private func configureModels() {
        sections.append(Section(title: "Profile", options: [Option(title: "Visualizar Perfil", handler: { [ weak self] in DispatchQueue.main.async {
            self?.viewProfile()
        }
        })]))
        
        sections.append(Section(title: "Account", options: [Option(title: "Sair", handler: { [ weak self] in DispatchQueue.main.async {
            self?.signOutTapped()
        }
        })]))
   }
    
    private func signOutTapped() {
        
    }
    
    private func viewProfile() {
        let vc = ProfileViewController()
        vc.title = "Profile"
        vc.navigationItem.largeTitleDisplayMode = .never
        vc.navigationController?.pushViewController(vc, animated: true)
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].options.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
        let model = sections[IndexPath.section].options[IndexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: IndexPath)
        cell.textLabel?.text = "Foo"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model = sections[indexPath.section].options[indexPath.row]
        model.handler()

    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let model = sections[section]
        return model.title
    }
}
