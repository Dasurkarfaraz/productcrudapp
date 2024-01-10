package productcrudapp.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int id;
		private String name;
		private String description;
		private long Price;
		
		public Product(int id, String name, String description, long price) {
			super();
			this.id = id;
			this.name = name;
			this.description = description;
			Price = price;
		}
		@Override
		public String toString() {
			return "Product [id=" + id + ", name=" + name + ", description=" + description + ", Price=" + Price + "]";
		}
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getDescription() {
			return description;
		}
		public Product() {
			super();
			// TODO Auto-generated constructor stub
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public long getPrice() {
			return Price;
		}
		public void setPrice(long price) {
			Price = price;
		}
		
		
}
