package com.sd.mommyson.owner.service;

import java.util.List;
import java.util.Map;

import com.sd.mommyson.manager.common.Pagination;
import com.sd.mommyson.member.dto.MemberDTO;
import com.sd.mommyson.owner.dto.CouponDTO;
import com.sd.mommyson.owner.dto.DCProduct;
import com.sd.mommyson.owner.dto.MembershipAndStoreDTO;
import com.sd.mommyson.owner.dto.MembershipDTO;
import com.sd.mommyson.owner.dto.ProductDTO;
import com.sd.mommyson.owner.dto.TagDTO;
import com.sd.mommyson.user.dto.OrderDTO;
import com.sd.mommyson.user.dto.ReviewDTO;

public interface OwnerService {

	public MemberDTO selectOwner(MemberDTO member);

	public List<CouponDTO> selectCoupon(Pagination pagination);

	public List<ReviewDTO> selectReview(Pagination pagination);
	
	public int modifyInfo(Map<String, Object> modifyInfo);

	public int modifyCeo(Map<String, Object> modifyInfo);

	public int registCoupon(CouponDTO coupon);

	public int registCouponStore(int memCode);
	
	public int modifyStore(Map<String, Object> modifyInfo);

	public int modifyPwd(MemberDTO member);

	public List<TagDTO> selectTag();

	public int registProduct(Map<String, Object> productInfo);

	public List<ProductDTO> selectProduct(Map<String, Object> searchMap);

	public int selectTotalCount(Map<String, Object> searchMap);

	public int deleteReview(List<Integer> deleteReviewList);

	public int deleteCoupon(List<Integer> deleteCouponList);
	
	public int modifyStatus(ProductDTO product);

	public int removeProduct(List<Integer> deleteCode);

	public int selectTotalDC(Map<String, Object> searchMap);

	public List<ProductDTO> selectDC(Map<String, Object> searchMap);

	public int selectTotalModal(Map<String, Object> searchMap);

	public List<ProductDTO> selectProdouct(int memCode);

	public List<OrderDTO> selectOrderList(Pagination pagination);

	public List<OrderDTO> selectOrderList2(Map<String, Object> searchMap);

	public int selectOrderListTotalCount(String storeName);

	public int selectCouponListTotalCount(int memCode);

	public int selectReviewListTotalCount(String storeName);

	public int registDc(List<DCProduct> maps);

	public int modifyOwnerStatus(Map<String, Object> map);

	public MembershipDTO selectMembership(int msCode);

	public int modifyProduct(List<DCProduct> maps);

	public OrderDTO selectOrder(int orderCode);

	public int acceptModifyOrder(Map<Object, Object> orderMap);

	public int cancleModifyOrder(Map<Object, Object> orderMap);

	public int completeModifyOrder(Map<Object, Object> orderMap);

	public int selectTotalCountOrder(Map<String, Object> searchMap);
	
	public int removeDc(List<Integer> codeList);

	public int modifyDc(List<Integer> codeList);

	public ProductDTO selectPd(int sdCode);

	public List<Integer> seletTagList(int sdCode);

	public int updateProduct(Map<String, Object> productInfo);

	public MembershipAndStoreDTO selectMembershipAndStore(int msCode);

}
