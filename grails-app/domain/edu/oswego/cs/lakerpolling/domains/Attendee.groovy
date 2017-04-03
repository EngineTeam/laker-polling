package edu.oswego.cs.lakerpolling.domains

/**
 * Created by Josh on 3/27/17.
 */
class Attendee {

    boolean attended

    static belongsTo = [attendance: Attendance]
    static hasOne = [user:User]

    static mapping = {
        version false
    }

    static constraints = {
        attended blank: false

    }
}
