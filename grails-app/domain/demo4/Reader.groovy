//package demo4
//123
//import grails.gorm.annotation.Entity
//import org.springframework.security.core.GrantedAuthority
//import org.springframework.security.core.authority.SimpleGrantedAuthority
//import org.springframework.security.core.userdetails.UserDetails
//
//@Entity
//class Reader implements UserDetails{
//    String username
//    String fullname
//    String password
//
//    static constraints = {
//    }
//
//    Reader() {
//
//    }
//
//    Reader(String username, String password) {
//        this.username = username
//        this.password = password
//    }
//
//    @Override
//    Collection<? extends GrantedAuthority> getAuthorities() {
//        return Arrays.asList(new SimpleGrantedAuthority("READER"))
//    }
//
//    @Override
//    boolean isAccountNonExpired() {
//        return true
//    }
//
//    @Override
//    boolean isAccountNonLocked() {
//        return true
//    }
//
//    @Override
//    boolean isCredentialsNonExpired() {
//        return true
//    }
//
//    @Override
//    boolean isEnabled() {
//        return true
//    }
//}
