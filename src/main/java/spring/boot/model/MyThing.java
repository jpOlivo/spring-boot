package spring.boot.model;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class MyThing {

	private String name;

	public MyThing() {

	}

	public MyThing(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
