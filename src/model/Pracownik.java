package model;

import java.math.BigDecimal;

public class Pracownik {
    private String imie, nazwisko;
    private BigDecimal pensja;
    private String departament;
    private String adres;
    
    
    public Pracownik() {
    }

    public Pracownik(String imie, String nazwisko,
   		 BigDecimal pensja, String departament, String adres) {
   	 this.imie = imie;
   	 this.nazwisko = nazwisko;
   	 this.pensja = pensja;
   	 this.departament = departament;
   	 this.adres = adres;
    }

    public String getImie() {
   	 return imie;
    }

    public void setImie(String imie) {
   	 this.imie = imie;
    }

    public String getNazwisko() {
   	 return nazwisko;
    }

    public void setNazwisko(String nazwisko) {
   	 this.nazwisko = nazwisko;
    }

    public BigDecimal getPensja() {
   	 return pensja;
    }

    public void setPensja(BigDecimal pensja) {
   	 this.pensja = pensja;
    }

    public String getDepartament() {
   	 return departament;
    }

    public void setDepartament(String departament) {
   	 this.departament = departament;
    }

    public String getAdres() {
   	 return adres;
    }

    public void setAdres(String adres) {
   	 this.adres = adres;
    }

    @Override
    public String toString() {
   	 return "Pracownik [imie=" + imie + ", nazwisko=" + nazwisko + ", pensja=" + pensja + ", departament="
   			 + departament + ", adres=" + adres + "]";
    }
    
    
    

}



