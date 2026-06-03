/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class Homepage: UIViewController {
    //MARK: - OUTLETS
    @IBOutlet weak var mainTableView: UITableView!
    //MARK: - VIEW CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerTVuCell()
    }
}

