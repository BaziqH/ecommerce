/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class HomepageTVuBannerCell: UITableViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var bannerCollectionView: UICollectionView!
    //MARK: - NIB CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        registerCVuCell()
        // Initialization code
    }
}
//MARK: - COLLECTION VIEW
extension HomepageTVuBannerCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadHeaderTVuCell(indexPath)
    }
}
//MARK: - COLLECTION VIEW FLOW LAYOUT
extension HomepageTVuBannerCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: (collectionView.frame.width / 2 ))
    }
}
//MARK: - LOAD CELLS
extension HomepageTVuBannerCell{
    func loadHeaderTVuCell(_ indexPath: IndexPath)->UICollectionViewCell{
        guard let cell = bannerCollectionView.dequeueReusableCell(withReuseIdentifier: "BannerCVuCell", for: indexPath) as? HomepageTVuBannerCVuCell else {
            return HomepageTVuBannerCVuCell()
        }
        cell.configure(title: "Get your 50% discount now", image: UIImage(named: "img_pants"), buttonTitle: "Shop Now")
        return cell
    }
}
extension HomepageTVuBannerCell{
    
    func setupCollectionView(){
        bannerCollectionView.delegate = self
        bannerCollectionView.dataSource = self
    }
    
    func registerCVuCell(){
        let nib = UINib(nibName: "BannerCVuCell", bundle: nil)
        bannerCollectionView.register(nib, forCellWithReuseIdentifier: "BannerCVuCell")
    }
}

