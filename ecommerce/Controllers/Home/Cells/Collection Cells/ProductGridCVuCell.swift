/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class HomepageTVuGridCVuCell: UICollectionViewCell {
    //MARK: - OUTLETS
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var wishlistButton: UIButton!
    @IBOutlet weak var wishlistView: DesignableView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK: - CONFIGURE CELL
    func configure(image: String, nameLabel: String, priceLabel: String){
        productImage.image = UIImage(named: image)
        productName.text = nameLabel
        productPrice.text = priceLabel
    }
}
