//
//  ViewController.swift
//  LearningRxSwift
//
//  Created by Hahn.Chan on 06/04/2017.
//  Copyright © 2017 Hahn Chan. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        button.rx.tap.subscribe(onNext: { [unowned self](_) in
//            self.label.text = self.textField.text
//        }).addDisposableTo(disposeBag)
        textField.rx.text.bindTo(label.rx.text).addDisposableTo(disposeBag)
    }

}
