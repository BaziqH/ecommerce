/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class HomepageTVuBannerCVuCell: UICollectionViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var bannerImage: UIImageView!
    //MARK: - AWAKE FROM NIB
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    //MARK: - CONFIGURE CELL
    func configure(title: String, image: UIImage?, buttonTitle: String) {
        mainLabel.text = title
        bannerImage.image = image
        
        mainButton.setTitle(buttonTitle, for: .normal)
        mainButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        mainButton.setTitleColor(.systemOrange, for: .normal)
        mainButton.layer.cornerRadius = 10
        mainButton.backgroundColor = .white
    }
}
