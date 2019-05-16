package org.occ.p3.service;

public interface BorrowService {

	public Boolean borrowBook(Integer workId, Integer memberId);

	public Boolean extendBorrow(Integer borrowId);

	public Boolean endBorrow(Integer borrowId);

	// public Works getBookById(Integer workId);

}
