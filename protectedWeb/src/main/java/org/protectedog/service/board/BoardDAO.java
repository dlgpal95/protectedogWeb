package org.protectedog.service.board;

import java.util.Map;

import org.protectedog.common.Search;
import org.protectedog.service.domain.Board;


//==> �Խ��ǰ������� CRUD �߻�ȭ/ĸ��ȭ�� DAO Interface Definition
public interface BoardDAO {
	
	// INSERT
	public void addBoard(Board board) throws Exception ;

	// SELECT ONE
	public Board getBoard(int postNo) throws Exception ;

	// SELECT LIST
	public Map<String, Object> listBoard(Search search, String boardCode) throws Exception ;

	// UPDATE
	public void updateBoard(Board board) throws Exception ;
	
	// UPDATE ��ȸ��
	public void updateViewCount(Board board) throws Exception ;
	
	// UPDATE ��õ��
	public void updateRecommendCount(Board board) throws Exception ;
	
	// DELETE
	public void delBoard(Board board) throws Exception ;
	
	// �Խ��� Page ó���� ���� ��üRow(totalCount)  return
	public int getTotalCount(String boardCode) throws Exception ;
	
}