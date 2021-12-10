package com.sd.mommyson.user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.manager.dto.PostDTO;
import com.sd.mommyson.member.dto.StoreDTO;
import com.sd.mommyson.user.common.SelectCriteria;
import com.sd.mommyson.user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	
	private UserDAO userDAO;
	
	@Autowired
	public UserServiceImpl(UserDAO userDAO) {
		this.userDAO = userDAO;
	}


	@Override
	public int selectTotalCount(Map<String, String> searchMap) {
		System.out.println("서비스 searchMap: " + searchMap);
		int totalCount = userDAO.selectTotalCount(searchMap);
		return totalCount;
	}

	@Override
	public int selectFqaTotalCount(Map<String, String> searchMap) {
		int totalCount = userDAO.selectFqaTotalCount(searchMap);
		return totalCount;
	}

	@Override
	public List<PostDTO> selectNotice(SelectCriteria selectCriteria) {
		
		List<PostDTO>noticeList = userDAO.selectNotice(selectCriteria);
		return noticeList;
	}


	@Override
	public List<StoreDTO> selectStoreList(Pagination pagination) {
		List<StoreDTO> storeList = userDAO.selectStoreList(pagination);
		return storeList;
	}
	
	@Override
	public List<PostDTO> selectFqaList(SelectCriteria selectCriteria) {

		List<PostDTO> fqaList = userDAO.selectFqaList(selectCriteria);
		
		return fqaList;
	}


	@Override
	public int selectProductTotalCount(Map<String, String> searchMap) {
		return userDAO.selectProductTotalCount(searchMap);
	}


	@Override
	public List<StoreDTO> selectProductList(Pagination pagination) {
		List<StoreDTO> productList = userDAO.selectProductList(pagination);
		return productList;
	}

	@Override
	public int selectStoreTotalCount(Map<String, String> searchMap) {
		return userDAO.selectStoreTotalCount(searchMap);
	}




	

}
