//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by MaSheN on 6.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var textFieldGirdi: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad Calisti")
        
        
        
        
        
        let button = UIButton();
        button.setTitle("YAP2", for: .normal)
        view.addSubview(button)
        button.frame = CGRect(x: 300, y: 300, width: 200, height: 50)
        button.addTarget(self, action: #selector(butonTikla), for: .touchUpInside)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear Calisti")
        //geri donusu yakalama
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear Calisti")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear Calisti")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Calisti")
    }
    

    @IBAction func butonTikla(_ sender: UIButton) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    @IBAction func butonBaslaTikla(_ sender: Any) {
        let kisi = Kisiler(ad: "ahmet", yas: 23, boy: 1.78, bekar: true)
        performSegue(withIdentifier: "oyunEkraniGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu clisti")
        
        if segue.identifier == "oyunEkraniGecis" {
            print("oyun ekrani gecis calisti")
            
            if let veri = sender as? Kisiler {
                
                let gidecekVC = segue.destination as! OyunEkraniVC
                gidecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func ekleItem(_ sender: Any) {
        print("ekle calisti")
        
    }
    
    @IBAction func kameraItem(_ sender: Any) {
        print("kamera calisti")
    }
    
}

