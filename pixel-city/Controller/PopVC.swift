//
//  PopVC.swift
//  pixel-city
//
//  Created by Le Dang Dai Duong on 12/9/17.
//  Copyright © 2017 Le Dang Dai Duong. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        self.passedImage = image
        addDoubleTap()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
