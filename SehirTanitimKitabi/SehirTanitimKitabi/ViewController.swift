import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
     
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Şehirler
        
     let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel:UIImage(named: "İstanbul")!)
     let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel:UIImage(named: "Ankara")!)
     let izmir = Sehir(isim: "İzmir", bolge: "Ege Bölgesi", gorsel:UIImage(named: "İzmir")!)
     let rize = Sehir(isim: "Rize", bolge: "Karadeniz", gorsel:UIImage(named: "Rize")!)
     let trabzon = Sehir(isim: "Trabzon", bolge: "Karadeniz", gorsel:UIImage(named: "Trabzon")!)

        
      sehirDizisi = [istanbul,ankara,izmir,rize,trabzon]


     
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }
    
    
}

