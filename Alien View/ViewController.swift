//
//  ViewController.swift
//  Alien View
//
//  Created by D7703_23 on 2018. 4. 3..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1
    var direction = 1

    @IBOutlet weak var alienImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 첫번째 이미지 로드
        alienImageView.image = UIImage(named: "frame1.png")
        label.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateImage(_ sender: Any) {
        //count가 5이면 감소시키기 위해 direction을 0으로 변경
        if count == 5 {
            direction = 0
            
        //count가 1이면 증가시키기 위해 direction을 1으로 변경
        } else if count == 1 {
            direction = 1
        }
        
        //direction이 1이면 count를 1씩 증가
        if direction == 1 {
            count += 1
        
        //direction이 0이면 count를 1씩 감소
        } else if direction == 0 {
            count = count - 1
        }
        alienImageView.image = UIImage(named:"frame\(count).png")
        label.text = String(count)
    }
}

