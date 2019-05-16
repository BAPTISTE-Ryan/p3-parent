package org.occ.p3.service;

 
 
import java.util.List; 

 
 
import org.occ.p3.model.Work;

public interface WorkService {

	public List<Work> findByAuthor(String author);

	public Work getWorkById(Integer workId);
}
