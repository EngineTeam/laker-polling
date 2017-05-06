package interceptors


class AuthCheckInterceptor {

    AuthCheckInterceptor() {
        matchAll()
                .excludes(controller: 'application', action: 'landing')
                .excludes(controller: 'auth', action: 'auth')
                .excludes(controller: 'auth', action: 'logout')
                .excludes(controller: 'course')
                .excludes(controller: 'question')
                .excludes(controller: 'quiz')
                .excludes(controller: 'user')
    }

    boolean before() {
        if (session && session.getAttribute("access")) {
            true
        } else {
            session.invalidate()
            redirect controller: 'application', action: 'landing'
            false
        }
    }

}
