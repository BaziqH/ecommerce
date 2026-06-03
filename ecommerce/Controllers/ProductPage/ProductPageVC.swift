/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class ProductPageVC: UIViewController {
    //MARK: - OUTLETS
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var addToCartButton: UIButton!
    
    //MARK: - VIEW CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerTVuCell()
    }
}
