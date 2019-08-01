package org.protectedog.service.order.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.protectedog.common.Search;
import org.protectedog.service.domain.Mileage;
import org.protectedog.service.domain.Order;
import org.protectedog.service.order.OrderDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
	

	@Repository("orderDAOImpl")
	public class OrderDAOImpl implements OrderDAO{
		
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
		
	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession = sqlSession;
	}
		
	///Constructor
	public OrderDAOImpl(){
		System.out.println(this.getClass());
		System.out.println("여까지는 들어오긴함?");
	}
	
	@Override
	public void addOrder(Order order) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("들어오는지");
		sqlSession.insert("OrderMapper.addOrder", order);
		System.out.println("들어오는지2");
		
	}
	
	@Override
	public List<Order> listOrder(Search search, String id) throws Exception {
		
		Map<String , Object>  map = new HashMap<String, Object>();
		System.out.println("어디까지 들어오나");
		map.put("search", search);
		System.out.println();
		map.put("id", id);
		map.put("startRowNum", search.getStartRowNum());
		map.put("endRowNum",search.getEndRowNum());
		System.out.println("listorder DAOImpl");

		return sqlSession.selectList("OrderMapper.listOrder", map);
		

	}
	
	@Override
	public int getTotalCount(String id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("OrderMapper.getTotalCount", id);
	}
	

	@Override
	public Order getOrder(int orderNo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("OrderMapper.getOrder", orderNo);
	}


	@Override
	public void updateOrder(Order order) throws Exception {
		sqlSession.update("OrderMapper.updateOrder", order);

	}

	@Override
	public int updateOrderCode(Order order) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update("OrderMapper.updateOrderCode", order);

	}


	@Override
	public void delOrder(Order order) throws Exception {
			sqlSession.update("OrderMapper.delOrder", order);
		}


	}

