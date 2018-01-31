//
//  ViewController.swift
//  Aircraft Performance Application
//
//  Created by Александр on 26.12.17.
//  Copyright © 2017 Alexander Melnichuk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var airportButton: UIButton!
    @IBOutlet weak var runwayButton: UIButton!
    @IBOutlet weak var runwayconditionButton: UIButton!
    @IBOutlet weak var thrustButton: UIButton!
    @IBOutlet weak var flapsButton: UIButton!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var antiiceButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func aiportButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Выберите аэропорт", message:nil, preferredStyle: .actionSheet)
        
        let airportAction = UIAlertAction(title: "Нет базы данных аэропортов",
                                      style: .default, handler: nil)
        
        controller.addAction (airportAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
        
    }
    
    
    @IBAction func runwayButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Выберите взлетно-посадочную полосу", message:nil, preferredStyle: .actionSheet)
        
        let airportAction = UIAlertAction(title: "Нет базы данных аэропортов",
                                          style: .default, handler: nil)
        
        controller.addAction (airportAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
    }
    
    @IBAction func runwayconditionButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Укажите состояние ВПП", message:nil, preferredStyle: .actionSheet)
        
        let dryAction = UIAlertAction(title: "Сухая",
                                      style: .default, handler: {action in
                                    self.runwayconditionButton.setTitle("Сухая", for: .normal)
        })
        
        let wetAction = UIAlertAction(title: "Мокрая",
                                      style: .default, handler: {action in
                                        self.runwayconditionButton.setTitle("Мокрая", for: .normal)
        })
        
        controller.addAction (dryAction)
        controller.addAction (wetAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
    }
    
    
    @IBAction func thrustButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Выберите режим тяги", message:nil, preferredStyle: .actionSheet)
        
        let optAction = UIAlertAction(title: "Оптимальный",
                                      style: .default, handler: {action in
                                        self.thrustButton.setTitle("Оптимальный", for: .normal)
        })
        
        let firstAction = UIAlertAction(title: "1",
                                      style: .default, handler: {action in
                                        self.thrustButton.setTitle("1", for: .normal)
        })
        
        let secondAction = UIAlertAction(title: "2",
                                      style: .default, handler: {action in
                                        self.thrustButton.setTitle("2", for: .normal)
        })
        
        let thirdAction = UIAlertAction(title: "3",
                                      style: .default, handler: {action in
                                        self.thrustButton.setTitle("3", for: .normal)
        })
        
        let fullAction = UIAlertAction(title: "Полная тяга",
                                      style: .default, handler: {action in
                                        self.thrustButton.setTitle("Полная тяга", for: .normal)
        })
        
        controller.addAction (optAction)
        controller.addAction (firstAction)
        controller.addAction (secondAction)
        controller.addAction (thirdAction)
        controller.addAction (fullAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
    }
    
    
    @IBAction func fplasButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Выберите взлетную конфигурацию", message:nil, preferredStyle: .actionSheet)
        
        let optflapsAction = UIAlertAction(title: "Оптимальный",
                                      style: .default, handler: {action in
                                        self.flapsButton.setTitle("Оптимальный", for: .normal)
        })
        
        let flaps5Action = UIAlertAction(title: "5",
                                        style: .default, handler: {action in
                                            self.flapsButton.setTitle("5", for: .normal)
        })
        
        let flaps15Action = UIAlertAction(title: "15",
                                         style: .default, handler: {action in
                                            self.flapsButton.setTitle("15", for: .normal)
        })
        
        let flaps20Action = UIAlertAction(title: "20",
                                        style: .default, handler: {action in
                                            self.flapsButton.setTitle("20", for: .normal)
        })
        
        
        controller.addAction (optflapsAction)
        controller.addAction (flaps5Action)
        controller.addAction (flaps15Action)
        controller.addAction (flaps20Action)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
    }
    
    
    @IBAction func acButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Укажите состояние системы кондиционирования", message:nil, preferredStyle: .actionSheet)
        
        let aconAction = UIAlertAction(title: "Включена",
                                           style: .default, handler: {action in
                                            self.acButton.setTitle("Вкл", for: .normal)
        })
        
        let acoffAction = UIAlertAction(title: "Выключена",
                                         style: .default, handler: {action in
                                            self.acButton.setTitle("Выкл", for: .normal)
        })
        
        
        controller.addAction (aconAction)
        controller.addAction (acoffAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
    }
    
    
    @IBAction func antiiceButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "Укажите состояние противообледенительной системы", message:nil, preferredStyle: .actionSheet)
        
        let antiiceOnAction = UIAlertAction(title: "Включена",
                                       style: .default, handler: {action in
                                        self.antiiceButton.setTitle("Вкл", for: .normal)
        })
        
        let antiiceOffAction = UIAlertAction(title: "Выключена",
                                        style: .default, handler: {action in
                                            self.antiiceButton.setTitle("Выкл", for: .normal)
        })
        
        controller.addAction (antiiceOnAction)
        controller.addAction (antiiceOffAction)
        
        if let ppc = controller.popoverPresentationController {
            ppc.sourceView = sender
            ppc.sourceRect = sender.bounds
            ppc.permittedArrowDirections = .down
        }
        
        present (controller, animated: true, completion: nil)
        
    }
    
    
    
}

