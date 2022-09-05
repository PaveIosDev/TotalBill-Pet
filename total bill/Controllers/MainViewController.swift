//
//  ViewController.swift
//  total bill
//
//  Created by Павел Яковенко on 26.08.2022.
//

import UIKit

class MainViewController: UIViewController {

    let titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Total bill"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 40)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionLabel: UILabel = {
       let label = UILabel()
        label.text = "Enter the invoice amount and click \"Calculate\""
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Bold", size: 15)
        label.adjustsFontSizeToFitWidth = true //регулирует размер шрифта по ширине
        label.minimumScaleFactor = 0.7  // мин размер шрифта
        label.numberOfLines = 2         //
        label.textAlignment = .center   // выравнивание по центру
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var calculateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Calculate", for: .normal)
        button.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.5647058824, green: 0.1529411765, blue: 0.5568627451, alpha: 1)
        button.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(calculateButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let totalBillVew = TotalBillView()
    let  personsView = PersonsView()
    let tipsView = TipsView()
    
    override func viewDidLoad() { // метод с которого начинается загрузка
        
    
        
        super.viewDidLoad()
       
        setupViews()
        setConstraints()
    }
    
    func setupViews(){ // настройка объектов
        view.backgroundColor = #colorLiteral(red: 0.9813231826, green: 0.9813460708, blue: 0.9813337922, alpha: 1)
        view.addSubview(titleLabel)
        view.addSubview(logoImageView)
        view.addSubview(descriptionLabel)
        view.addSubview(totalBillVew)
        view.addSubview(personsView)
        view.addSubview(calculateButton)
        view.addSubview(tipsView)
    }
    
     @objc func calculateButtonTapped(){
         guard let totalBill = totalBillVew.summTextField.text,
            let totalBillInt = Int(totalBill) else { return }
         let summ = totalBillInt + totalBillInt * tipsView.tipsCount / 100
         print(summ)
    }
    
}

extension MainViewController {
    
    func setConstraints(){ // расположение объектов
        NSLayoutConstraint.activate([
        
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            logoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            
            descriptionLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 15),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        
            totalBillVew.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            totalBillVew.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            totalBillVew.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            totalBillVew.heightAnchor.constraint(equalToConstant: 130),
            
            personsView.topAnchor.constraint(equalTo: totalBillVew.bottomAnchor, constant: 10),
            personsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            personsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            personsView.heightAnchor.constraint(equalToConstant: 130),
            
            tipsView.topAnchor.constraint(equalTo: personsView.bottomAnchor, constant: 10),
            tipsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tipsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tipsView.heightAnchor.constraint(equalToConstant: 130),
            
            calculateButton.topAnchor.constraint(equalTo: tipsView.bottomAnchor, constant: 5),
            calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            calculateButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            calculateButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
