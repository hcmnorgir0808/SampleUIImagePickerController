//
//  ViewController.swift
//  SampleUIImagePickerController
//
//  Created by 岩本康孝 on 2021/09/06.
//

import UIKit
import AssetsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidTapped(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        present(imagePickerController, animated: true)
        
    }
}

extension ViewController: UIImagePickerControllerDelegate {
    // キャンセルボタンが押下されたとき
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print(#function)
    }
    
    // image or movieの選択を終了したとき
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(#function)
    }
}

extension ViewController: UINavigationControllerDelegate {}
