package demo4.readingList

import demo4.Book
import grails.gorm.transactions.Transactional
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.servlet.ModelAndView

class ReadingListController {

    @ExceptionHandler(value = RuntimeException.class)
    def error() {
        "error"
    }

    @RequestMapping(method = RequestMethod.GET)
    def index() {
            def bookList = Book.list(params)
            new ModelAndView("/index", ["bookList" : bookList])
    }


    @RequestMapping( method = RequestMethod.POST)
    @Transactional
    def save(Book book) {
            book.setReader("123")
            book.save()

        redirect(action:"index")
    }

    def login() {
         "login"
    }

}
