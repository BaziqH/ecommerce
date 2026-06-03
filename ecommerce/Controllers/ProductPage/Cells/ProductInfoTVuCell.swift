/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class ProductPageTVuLabelCell: UITableViewCell {

    //MARK: - OUTLETS
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK: - CONFIGURE CELL
    func configure(productName: String, productPrice: String){
        self.productName.text = productName
        self.productPrice.text = productPrice
    }
}
