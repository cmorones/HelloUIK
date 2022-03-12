//
//  ViewController.swift
//  HelloUIK
//
//  Created by Cesar Morones on 11/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    let btn = UIButton()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    
    let txt = UITextField()
    let txt2 = UITextField()
   

    override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          self.view.backgroundColor = .lightGray
          
          btn.frame.size = CGSize(width: 150, height: 40)
          btn.frame = CGRect(x: 120, y: 380, width: 150, height: 40)
       
          btn.setTitle("Entrar", for: .normal)
        
          label1.frame = CGRect(x: 20, y: 160, width: 150, height: 40)
          label1.text = "Usuario"
        
          label2.frame = CGRect(x: 20, y: 200, width: 150, height: 40)
          label2.text = "Contraseña"
        
          label3.frame = CGRect(x: 120, y: 100, width: 150, height: 40)
          label3.text = "BIENVENIDO"
        
        self.view.addSubview(label1)
        
        self.view.addSubview(label2)
        
        self.view.addSubview(label3)
        
          // siempre que tengamos que pasar un "selector" debe ser un método expuesto para obj-c
          btn.addTarget(self, action:#selector(btnTouch), for:.touchUpInside)
          self.view.addSubview(btn)
          txt.frame = CGRect(x: 120, y: 160, width: 150, height: 35)
          txt.backgroundColor = .white
          txt.borderStyle = .roundedRect
          self.view.addSubview(txt)
        
          txt2.frame = CGRect(x: 120, y: 200, width: 150, height: 35)
          txt2.backgroundColor = .white
          txt2.borderStyle = .roundedRect
         self.view.addSubview(txt2)
        
        
      }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        btn.center = self.view.center
    }
    //la directiva objc expone el metodo para ejecutarse a nivel objective-c
    @objc func btnTouch(){
        
        let alert = UIAlertController(title: "Hola", message: "Bienvenido a swift", preferredStyle: .alert)
        let action = UIAlertAction(title: "si", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "No", style: .default, handler:{
            alert in
                print ("el usuario pulso el boton NO")
            
        })
        alert.addAction(action)
        alert.addAction(action2)
        self.present(alert, animated: true, completion: nil)
        
    }


}

