//********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

//MARK: - LOAD HEADER CELL
extension Homepage{
    func loadBannerCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderTVuCell", for: indexPath) as? HomepageTVuBannerCell else {
            return HomepageTVuBannerCell()
        }
        return cell
    }
}
