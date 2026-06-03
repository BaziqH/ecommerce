/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD PRODUCT INFO CELL
extension ProductPageVC{
    func loadLabelCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductInfoTVuCell", for: indexPath) as? ProductPageTVuLabelCell else {
            return ProductPageTVuLabelCell()
        }
        cell.configure(productName: "Cotton Pants", productPrice: "PKR 500")
        return cell
    }
}
