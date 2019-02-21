//
//  ViewController.swift
//  ios-exp
//
//  Created by 金乃德 on 2019/2/20.
//  Copyright © 2019 金乃德. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let childView = createCard()
        childView.center = view.center
        view.addSubview(childView)
    }
    
    func createCard() -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 310, height: 512))
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 7.87
        view.layer.masksToBounds = true
        
        let imageView = UIImageView(image: UIImage(named: "Joker"))
        imageView.contentMode = .scaleAspectFill
        imageView.frame = view.bounds
        view.addSubview(imageView)
        
        let effectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        effectView.frame = CGRect(
            x: view.bounds.minX,
            y: view.bounds.minY + view.bounds.height / 2,
            width: view.bounds.width,
            height: view.bounds.height / 2
        )
        view.addSubview(effectView)
        return view
    }


}

