/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class HomepageTVuGridCell: UITableViewCell {
    //MARK: - OUTLETS
    @IBOutlet weak var collectionViewGrid: UICollectionView!
    //MARK: - VARIABLES
    var onItemTap: (() -> Void)?
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        registerCVuCell()
        // Initialization code
        addAccessIdentifiers()
        
    }
}
//MARK: - COLLECTION VIEW
extension HomepageTVuGridCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadProductsTVuCell(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        onItemTap?()
    }
}
//MARK: - COLLECTION VIEW FLOW LAYOUT
extension HomepageTVuGridCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2 - 5  , height: (collectionView.frame.width / 1.5 ))
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}
//MARK: - LOAD CELLS
extension HomepageTVuGridCell{
    func loadProductsTVuCell(_ indexPath: IndexPath)->UICollectionViewCell{
        guard let cell = collectionViewGrid.dequeueReusableCell(withReuseIdentifier: "ProductGridCVuCell", for: indexPath) as? HomepageTVuGridCVuCell else {
            return HomepageTVuGridCVuCell()
        }
        // For testing puposes
        cell.accessibilityIdentifier = "cell_\(indexPath.item)"
        //
        cell.configure(image: "img_pants", nameLabel: "Cotton Pants", priceLabel: "RS. 500")
        return cell
    }
}
//MARK: - SETUP COLLECTION VIEW
extension HomepageTVuGridCell{
    func setupCollectionView(){
        collectionViewGrid.delegate = self
        collectionViewGrid.dataSource = self
    }
    //MARK: - REGISTER CELLS
    func registerCVuCell(){
        let nib = UINib(nibName: "ProductGridCVuCell", bundle: nil)
        collectionViewGrid.register(nib, forCellWithReuseIdentifier: "ProductGridCVuCell")
    }
}

//MARK: - ACCESSIBILITY FOR TEST
extension HomepageTVuGridCell{
    func addAccessIdentifiers(){
        self.isAccessibilityElement = false
        collectionViewGrid.accessibilityIdentifier = "productCollectionView"
        collectionViewGrid.isAccessibilityElement = true
    }
}
