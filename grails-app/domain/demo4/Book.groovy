package demo4

import grails.gorm.annotation.Entity

@Entity
class Book {

    static constraints = {
        isbn(blank:true,nullable: true)
        author(blank:true,nullable: true)
        title(blank:true,nullable: true)
    }

    String reader

    String isbn

    String title

    String author

    String description


}
