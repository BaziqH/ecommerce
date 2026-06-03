/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD PRODUCT IMAGE CELL
extension ProductPageVC{
    func loadImageCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductImageTVuCell", for: indexPath) as? ProductPageTVuImageCell else {
            return ProductPageTVuImageCell()
        }
        cell.configure(mainImage: "img_pants3", secondImage: "img_pants2", thirdImage: "img_pants1")
        return cell
    }
}
