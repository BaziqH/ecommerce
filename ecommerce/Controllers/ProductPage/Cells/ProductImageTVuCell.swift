/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class ProductPageTVuImageCell: UITableViewCell {
    //MARK: - OUTLETS
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //MARK: - CONFIGURE CELL
    func configure(mainImage: String, secondImage: String, thirdImage: String){
        self.mainImage.image = UIImage(named: mainImage)
        self.secondImage.image = UIImage(named: secondImage)
        self.thirdImage.image = UIImage(named: thirdImage)
    }
}
