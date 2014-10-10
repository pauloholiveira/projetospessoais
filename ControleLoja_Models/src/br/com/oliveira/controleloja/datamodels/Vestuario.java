/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.oliveira.controleloja.datamodels;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

/**
 *
 * @author paulo.oliveira
 */
@Entity
@Table(name = "vestuario")
@PrimaryKeyJoinColumn(name="id_peca", referencedColumnName="id")
public class Vestuario extends Produto implements Serializable {
    private static final long serialVersionUID = 1L;
    @JoinColumn(name = "id_manga", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Mangas mangas;
    @JoinColumn(name = "id_gola", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Golas golas;

    public Vestuario() {
    }
    
    public Mangas getMangas() {
        return mangas;
    }

    public void setMangas(Mangas mangas) {
        this.mangas = mangas;
    }

    public Golas getGolas() {
        return golas;
    }

    public void setGolas(Golas golas) {
        this.golas = golas;
    }
}
