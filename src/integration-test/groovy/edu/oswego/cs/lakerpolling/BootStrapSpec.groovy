package edu.oswego.cs.lakerpolling

import edu.oswego.cs.lakerpolling.domains.AuthToken
import edu.oswego.cs.lakerpolling.domains.Course
import edu.oswego.cs.lakerpolling.domains.Role
import edu.oswego.cs.lakerpolling.domains.User
import edu.oswego.cs.lakerpolling.util.RoleType
import geb.spock.GebSpec
import grails.converters.JSON
import grails.plugins.rest.client.RestBuilder
import grails.plugins.rest.client.RestResponse
import grails.test.mixin.integration.Integration
import org.apache.http.client.utils.URIBuilder
import org.grails.orm.hibernate.HibernateDatastore
import org.junit.Rule
import org.junit.rules.TestName
import org.springframework.beans.factory.annotation.Autowired
import spock.lang.Shared

@Integration
class BootStrapSpec extends GebSpec {
    @Autowired
    HibernateDatastore hibernateDatastore

    @Rule
    TestName name = new TestName()

    @Shared
    User VALID_ADMIN, INVALID_ADMIN, VALID_INSTRUCTOR, INVALID_INSTRUCTOR, VALID_STUDENT, INVALID_STUDENT

    @Shared
    Course VALID_COURSE, INVALID_COURSE

    def setupSpec() {
        init()
        println "----------Test Environment----------"
        testWithoutHeading(VALID_ADMIN,
                INVALID_ADMIN,
                VALID_INSTRUCTOR,
                INVALID_INSTRUCTOR,
                VALID_STUDENT,
                INVALID_STUDENT,
                VALID_COURSE,
                INVALID_COURSE)
        println "------------------------------------"
        println "\n\n"
    }

    def setup() {
        init()
        println "\n----------START: ${name.getMethodName()}----------"
    }

    /**
     * Delete all created GORM objects before the next method.
     */
    def cleanup() {
        println "----------END: ${name.getMethodName()}------------"
        hibernateDatastore.withNewSession {
            VALID_COURSE.delete(flush: true, failOnError: true)
            VALID_ADMIN.delete(flush: true, failOnError: true)
            VALID_INSTRUCTOR.delete(flush: true, failOnError: true)
            VALID_STUDENT.delete(flush: true, failOnError: true)
        }
    }

    def get(String endpoint, Map<String, Object> params) {
        RestResponse res = new RestBuilder().get(toUrl(endpoint, params)) { accept JSON }
        printRestResponse(res)
        res
    }

    def put(String endpoint, Map<String, Object> params) {
        RestResponse res = new RestBuilder().put(toUrl(endpoint, params)) { accept JSON }
        printRestResponse(res)
        res
    }

    def post(String endpoint, Map<String, Object> params) {
        RestResponse res = new RestBuilder().post(toUrl(endpoint, params)) { accept JSON }
        printRestResponse(res)
        res
    }

    def delete(String endpoint, Map<String, Object> params) {
        RestResponse res = new RestBuilder().delete(toUrl(endpoint, params)) { accept JSON }
        printRestResponse(res)
        res
    }

    def toUrl(String endpoint, Map<String, Object> params) {
        URIBuilder builder =  new URIBuilder()
                .setScheme("http")
                .setHost("localhost")
                .setPort(Integer.parseInt("$serverPort"))
                .setPath(endpoint)


        params.each {k ,v -> builder.setParameter(k, String.valueOf(v))}

        def url = builder.build().toURL().toString()
        println "Request URL: $url"
        url
    }

    /**
     * Set up GORM objects.
     */
    private void init() {
        // Create Valid Admin
        Role role = new Role(type: RoleType.ADMIN, master: RoleType.ADMIN)
        AuthToken authToken = new AuthToken(accessToken: "va-tok", subject: "va-sbj")
        VALID_ADMIN = new User(firstName: "Sal", lastName: "Schuck", email: "sschuck@oswego.edu", imageUrl: "#")
        VALID_ADMIN.setRole(role)
        VALID_ADMIN.setAuthToken(authToken)

        // Create Invalid Admin
        role = new Role(type: RoleType.ADMIN, master: RoleType.ADMIN)
        authToken = new AuthToken(accessToken: "ia-tok", subject: "ia-sbj")
        INVALID_ADMIN = new User(firstName: "Milda", lastName: "Han", email: "mhan@oswego.edu", imageUrl: "#")
        INVALID_ADMIN.setRole(role)
        INVALID_ADMIN.setAuthToken(authToken)

        // Create Valid Instructor
        role = new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR)
        authToken = new AuthToken(accessToken: "vi-tok", subject: "vi-sbj")
        VALID_INSTRUCTOR = new User(firstName: "Dirk", lastName: "Defilippo", email: "ddefilippo@oswego.edu", imageUrl: "#")
        VALID_INSTRUCTOR.setRole(role)
        VALID_INSTRUCTOR.setAuthToken(authToken)

        // Create Invalid Instructor
        role = new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR)
        authToken = new AuthToken(accessToken: "ii-tok", subject: "ii-sbj")
        INVALID_INSTRUCTOR = new User(firstName: "Fausto", lastName: "Ottinger", email: "fottinger@oswego.edu", imageUrl: "#")
        INVALID_INSTRUCTOR.setRole(role)
        INVALID_INSTRUCTOR.setAuthToken(authToken)

        // Create Valid Student
        role = new Role(type: RoleType.STUDENT, master: RoleType.STUDENT)
        authToken = new AuthToken(accessToken: "vs-tok", subject: "vs-sbj")
        VALID_STUDENT = new User(firstName: "Yi", lastName: "Vanriper", email: "yvanriper@oswego.edu", imageUrl: "#")
        VALID_STUDENT.setRole(role)
        VALID_STUDENT.setAuthToken(authToken)

        // Create Invalid Student
        role = new Role(type: RoleType.STUDENT, master: RoleType.STUDENT)
        authToken = new AuthToken(accessToken: "is-tok", subject: "is-sbj")
        INVALID_STUDENT = new User(firstName: "Elmer", lastName: "Bice", email: "ebice@oswego.edu", imageUrl: "#")
        INVALID_STUDENT.setRole(role)
        INVALID_STUDENT.setAuthToken(authToken)

        // Create Valid Course
        VALID_COURSE = new Course(name: "CSC480", crn: "11098")
        VALID_COURSE.setInstructor(VALID_INSTRUCTOR)

        // Create Invalid Course
        INVALID_COURSE = new Course(name: "HIS101", crn: "10953")
    }

    /**
     * Save all created GORM objects.
     */
    private void postInit() {
        hibernateDatastore.withNewSession {
            VALID_INSTRUCTOR.save(flush: true, failOnError: true)
            VALID_ADMIN.save(flush: true, failOnError: true)
            VALID_STUDENT.save(flush: true, failOnError: true)
            VALID_COURSE.save(flush: true, failOnError: true)
        }
    }

    /**
     * Method that has to be ran with every method.
     */
    def testWith(Object... obj) {
        postInit()
        println "##########Test Specific Environment##########"
        testWithoutHeading(obj)
        println "#############################################\n"
    }

    /**
     * Print definitions for GORM objects.
     */
    private static void testWithoutHeading(Object... obj) {
        List<User> users = obj.findAll { o -> o instanceof User} as List<User>
        List<Course> courses = obj.findAll { o -> o instanceof Course} as List<Course>
        Map<String, Object> params = obj.find { o -> o instanceof Map<String, Object>} as Map<String, Object>

        if(!users.isEmpty()) {
            println "Users:"
            users.forEach { u -> printUser(u)}
        }
        if(!courses.isEmpty()) {
            println "Courses:"
            courses.forEach { c -> printCourse(c)}
        }
        if(params != null) {
            println "Params:"
            params.each {k, v -> println "\tKey: $k Value: $v"}
        }
    }

    private static void printRestResponse(RestResponse res) {
        println "Response: " + res.json
    }

    /**
     * Print for User object.
     */
    private static void printUser(User user) {
        println "\tFirstName: $user.firstName"
        println "\tLastName: $user.lastName"
        println "\tEmail: $user.email"
        println "\tImageUrl: $user.imageUrl"
        println "\tRole: "
        println "\t\tType: $user.role.type"
        println "\t\tMaster: $user.role.master"
        println "\tAuthToken: "
        println "\t\tSubject: $user.authToken.subject"
        println "\t\tAccessToken: $user.authToken.accessToken"
        println "\t---"
    }

    /**
     * Print for Course object.
     */
    private static void printCourse(Course course) {
        println "\tName: $course.name"
        println "\tCRN: $course.crn"
        println "\tID: ${course.id.toString()}"
        println "\tInstructor: ${course.instructor?.email}"
        println "\t---"
    }
}
