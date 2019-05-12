import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        if (input.text != "") {
            list.append(input.text!)
            //add the list to user defaults so data will be saved on restart
            UserDefaults.standard.set(list, forKey: "tasks")
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
