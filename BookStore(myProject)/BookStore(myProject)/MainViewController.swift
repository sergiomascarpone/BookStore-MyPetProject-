//
//  ViewController.swift
//  BookStore(myProject)
//
//  Created by Sergio Mascarpone on 10.05.23.
//

import UIKit

class MainViewController: UIViewController {
    
    
    /// Создание и размещение вью
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Book store"
        label.textColor = .white
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    /// Создание и размещение imageView
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "viewLogo")
        imageView.contentMode = .scaleAspectFill // изображение на всю вью
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
      
    }
    
    
    /// Настройка обьектов
    func setupView() {
        view.backgroundColor = .gray //Цвет всей вью
        
        view.addSubview(imageView)
        view.addSubview(titleLabel)
    }

}

extension MainViewController {
    
    
    /// Расположение обьектов
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 260),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 260),
            
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor), //расположение текста по центру по оси Х
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50)
    
    
    
    
    ])
  }
}
