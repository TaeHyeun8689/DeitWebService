package com.springproj.dietwebservice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.DiaryVO;
import com.springproj.dietwebservice.repository.IDiaryDAO;


@Service
public class DiaryServiceImpl implements DiaryService {
	@Autowired
	   private IDiaryDAO diaryDAO;

	@Override
	public void saveDiaryEntry(DiaryVO diary) {
		System.out.println(diary);
		diaryDAO.saveDiaryEntry(diary);
		
	}

   

}
