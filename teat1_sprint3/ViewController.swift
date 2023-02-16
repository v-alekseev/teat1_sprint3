//
//  ViewController.swift
//  teat1_sprint3
//
//  Created by Vitaly Alekseev on 12.02.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak private var counterButton: UIButton!
    @IBOutlet weak private var counterValueLabel: UILabel!
    
    // MARK: - Private Properties
    // Инициализируем счетчик начальным значение 0 и шагом 1
    private var counter: Counter = Counter(startValue: 0, counterStep: 1)
    
    // MARK: - UIViewController(*)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Установим начальный текст в label
        setCounterLabel()
    }
    
    // MARK: - IBAction
    @IBAction func buttonTapDown(_ sender: UIButton) {
        // Увеличим счетчик один шаг
        counter.incrementCounterLabel()
        // Обновим текст на экране
        setCounterLabel()
    }
    
    // MARK: - Private Methods
    // Функция обновляет текст на экране
    private func setCounterLabel() {
        counterValueLabel.text = counter.getText()
    }
}


