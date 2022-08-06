//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by MaSheN on 6.08.2022.
//

import UIKit

class OyunEkraniVC: UIViewController {

    var kisi:Kisiler?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let k = kisi {
            print("kisi adi : \(k.ad!)")
            print("kisi yasi :\(k.yas!)")
            print("kisi boy:\(k.boy!)")
            print("kisi bekar mi? : \(k.bekar!)")
        }
    }
    

    @IBAction func butonBitirTikla(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraniGecis", sender: nil)
    }
    
    @IBAction func buttonGeriTikla(_ sender: Any) {
        navigationController?.popViewController(animated: true)//bir onceki sayfaya geri doner
        //Stack pop() islemi
        
        //navigationController?.popToRootViewController(animated: true) // Anasayfaya donmek icin
    }
}
