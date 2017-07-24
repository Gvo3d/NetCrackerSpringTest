package test.model;

import javax.persistence.*;

/**
 * Created by Gvozd on 24.07.2017.
 */
@Entity
@Table(name ="obja")
public class ObjA {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "data")
    private String data;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ObjA objA = (ObjA) o;

        if (getId() != objA.getId()) return false;
        return getData() != null ? getData().equals(objA.getData()) : objA.getData() == null;
    }

    @Override
    public int hashCode() {
        int result = getId();
        result = 31 * result + (getData() != null ? getData().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "ObjA{" +
                "id=" + id +
                ", data='" + data + '\'' +
                '}';
    }
}
