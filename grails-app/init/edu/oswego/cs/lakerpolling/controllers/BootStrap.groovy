package edu.oswego.cs.lakerpolling.controllers

import edu.oswego.cs.lakerpolling.domains.Role
import edu.oswego.cs.lakerpolling.domains.User
import edu.oswego.cs.lakerpolling.util.RoleType

class BootStrap {

    def init = { servletContext ->

        /* Define students */

        /* instructors */
        User zsabin = new User(email: "zsabin@oswego.edu")
        zsabin.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        zsabin.save(flush: true)

        User cjankovs = new User(email: "cjankovski@oswego.edu")
        cjankovs.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        cjankovs.save(flush: true)

        User lefebvre = new User(email: "lefebvre@oswego.edu")
        lefebvre.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        lefebvre.save(flush: true)

        User cgannon = new User(email: "cgannon@oswego.edu")
        cgannon.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        cgannon.save(flush: true)

        User cdamico = new User(email: "cdamico@oswego.edu")
        cdamico.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        cdamico.save(flush: true)
        
        User jolanda = new User(email: "jolanda.tromp@oswego.edu")
        jolanda.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        jolanda.save(flush: true)

        User ulises = new User(email: "ulises.mejias@oswego.edu")
        ulises.setRole(new Role(type: RoleType.INSTRUCTOR, master: RoleType.INSTRUCTOR))
        ulises.save(flush: true)


        /*End instructors*/
    }

    def destroy = {
    }
}
