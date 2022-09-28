package com.smhrd.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor // 모든 필드를 초기화 하는 생성자
@Data
public class GoodDTO {

	private String id;
	private int song_seq;
	

}