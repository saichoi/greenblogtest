package com.cos.blogapp.domain.board;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.cos.blogapp.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Board {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; //PK (자동증가 번호)
	private String title; // 아이디
	private String content;
	
	@JoinColumn(name = "userId") // 외래키(포린키)의 이름을 바꿀 수 있다.
	@ManyToOne
	private User user; // user_id 만들어준다. 포린키 만들어준다. 
	
}
