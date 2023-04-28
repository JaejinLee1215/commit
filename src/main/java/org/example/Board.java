package org.example;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.*;

@Entity
@Table(name = "Board")
public class Board {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int Id;

    @Column(name = "title", nullable = false, length = 10)
    private String title;

    @Column(name = "author", nullable = false, length = 100)
    private String author;

    @Column(name = "content", nullable = false, length = 100)
    private String content;

    @Column(name = "language", nullable = false, length = 100)
    private String language;


//    public org.example.Board(String title, String author, String language){
//        this.title = title;
//        this.author = author;
////        this.content = content;
//        this.language = language;
//    }
    public int getID() {
        return Id;
    }
    public void setID(int Id) {
        this.Id = Id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }
}
