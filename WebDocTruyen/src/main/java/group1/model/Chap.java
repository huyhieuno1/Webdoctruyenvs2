package group1.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
public class Chap {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID_Chap;
	@ManyToOne(cascade = CascadeType.ALL)
	private Truyen truyen;
	@Column(columnDefinition=("text"))
	private String picture;
	private int number;
	
}
