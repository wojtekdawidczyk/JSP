package beans;

import java.time.LocalTime;

public class InfoBean {

	private String napis = "ala ma kotka";
	private int licznik=0;
	public String getNapis() {
		return napis;
	}

	public void setNapis(String napis) {
		this.napis = napis;
	}
	
	public LocalTime getGodzina() {
		return LocalTime.now();
	}
	public int getLicznik() {
		licznik++;
		return licznik;
	}
}
