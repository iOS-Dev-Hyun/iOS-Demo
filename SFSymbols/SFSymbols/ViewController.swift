import UIKit

class ViewController: UIViewController {
    
    let symbols: [String] = ["cloud.fill","cloud.moon.fill","rainbow",
    "moon.stars.fill","airtag.fill","macpro.gen3.fill","apple.logo","applewatch.radiowaves.left.and.right"]
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reload()
    }
    
    func reload() {
        let symbol = symbols.randomElement()!
        print(symbol)
        imageView.image = UIImage(systemName: symbol)
        imageView.addSymbolEffect(.bounce.wholeSymbol)
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        reload()
    }
    
}

