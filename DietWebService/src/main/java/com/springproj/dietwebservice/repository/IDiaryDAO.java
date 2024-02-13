package com.springproj.dietwebservice.repository;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.DiaryVO;


@Mapper
public interface IDiaryDAO {
	public void getMember(DiaryVO vo);
	public void saveDiaryEntry(DiaryVO diary);

}
