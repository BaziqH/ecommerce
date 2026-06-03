/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD PRODUCT CELL
extension Homepage{
    func loadProductsCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductsTVuCell", for: indexPath) as? HomepageTVuGridCell else {
            return HomepageTVuGridCell()
        }
        cell.onItemTap = { [weak self] in
            guard let self = self else { return }
            let storyboard = UIStoryboard(name: "ProductPage", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "ProductPageVC") as! ProductPageVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
        cell.isAccessibilityElement = false
        return cell
    }
}
