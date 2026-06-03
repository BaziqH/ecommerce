//********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class HomepageTVuSegmentedCell: UITableViewCell {
    //MARK: - OUTLETS
    @IBOutlet weak var allOuterView: UIView!
    @IBOutlet weak var newestOuterView: UIView!
    @IBOutlet weak var popularOuterView: UIView!
    @IBOutlet weak var manOuterView: UIView!
    @IBOutlet weak var womanOuterView: UIView!
    @IBOutlet weak var allUnderline: UIView!
    @IBOutlet weak var newestUnderline: UIView!
    @IBOutlet weak var popularUnderline: UIView!
    @IBOutlet weak var manUnderline: UIView!
    @IBOutlet weak var womanUnderline: UIView!
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layoutIfNeeded()
        hideAllUnderlines()
        setupGestures()
    }
    // MARK: - SEGMENT SELECTORS
    @objc private func allUnderlineTapped() {
        hideAllUnderlines()
        allUnderline.isHidden = false
    }
    @objc private func newestUnderlineTapped() {
        hideAllUnderlines()
        newestUnderline.isHidden = false
    }
    @objc private func popularUnderlineTapped() {
        hideAllUnderlines()
        popularUnderline.isHidden = false
    }
    @objc private func manUnderlineTapped() {
        hideAllUnderlines()
        manUnderline.isHidden = false
    }
    @objc private func womanUnderlineTapped() {
        hideAllUnderlines()
        womanUnderline.isHidden = false
    }
    // MARK: - Tap Gestures on Segemented Control
    func setupGestures() {
        addTap(to: allOuterView, action: #selector(allUnderlineTapped))
        addTap(to: newestOuterView, action: #selector(newestUnderlineTapped))
        addTap(to: popularOuterView, action: #selector(popularUnderlineTapped))
        addTap(to: manOuterView, action: #selector(manUnderlineTapped))
        addTap(to: womanOuterView, action: #selector(womanUnderlineTapped))
    }
    private func addTap(to view: UIView, action: Selector) {
        view.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: action)
        view.addGestureRecognizer(tap)
    }
    func hideAllUnderlines(){
        allUnderline.isHidden = true
        newestUnderline.isHidden = true
        popularUnderline.isHidden = true
        manUnderline.isHidden = true
        womanUnderline.isHidden = true
    }
}
