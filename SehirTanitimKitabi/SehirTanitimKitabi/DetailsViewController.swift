import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblSehir: UILabel!
    @IBOutlet weak var lblBolge: UILabel!
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblSehir.text = secilenSehir?.isim
        lblBolge.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel
       
    }
    

}
