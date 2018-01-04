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
@Table(name="IMAGES")
public class Images {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id_IMG;
	@Column(columnDefinition=("NVARCHAR(200)"))
	private String name;
	@ManyToOne(cascade = CascadeType.ALL)
	private Chap chap;
}
