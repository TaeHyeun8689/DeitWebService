package com.springproj.dietwebservice.domain;

import java.time.LocalDateTime;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
//@Builder
//@Table(name = "Diary")
public class DiaryVO {
	   // @Id
	    //@GeneratedValue(strategy = GenerationType.IDENTITY)
	    //private Long id;

	    //@ManyToOne
	    //@JoinColumn(name = "member_id")  // 사용자 정보를 참조하는 외래 키
	    //private MemberVO author;

	    private String title;
	    private String writer;
	    private String content;
	    private LocalDateTime createdAt;
	    
	    
	    
	    
	    
	    
		}

