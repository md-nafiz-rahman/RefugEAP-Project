package com.example.refugeapproject.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import com.example.refugeapproject.membership.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
//import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndView;

/*  Class to handle all requests through out the webpage  */
@Controller
public class PageController {

    @Autowired
    UserRepo userRepo;
    @Autowired
    RoleRepo roleRepo;
    @Autowired
    BlogRepo blogRepo;
    @Autowired
    EventRepo eventRepo;
    @Autowired
    ViewCountRepo viewRepo;
    @Autowired
    ContactRepo contactRepo;
    @Autowired
    private EmailService emailService;


    // Formatter to display date and times for the event calendar
    private void formatEventDateTime(List<Event> events, DateTimeFormatter dateFormatter, DateTimeFormatter timeFormatter) {
        for (Event event : events) {
            String formattedDate = event.getEvent_datetime().format(dateFormatter);
            String formattedTime = event.getEvent_datetime().format(timeFormatter);

            event.setFormattedDate(formattedDate);
            event.setFormattedTime(formattedTime);
        }
    }


    // Passes required home page objects
    //  - Blogs to show most recent blogs feature
    //  - A view counter for No of visitors
    //  @RequestMapping(value = "/")
    public ModelAndView homePage() {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all the blogs from the database using the findAll() method
        List<Blog> blogs = (List<Blog>) blogRepo.findByStatus("pending");
        List<Blog> acceptedBlogs = (List<Blog>) blogRepo.findByStatus("approved");
        List<Blog> discardedBlogs = (List<Blog>) blogRepo.findByStatus("deleted");


        // Pass the list of blogs to the JSP view
        modelAndView.addObject("blogs", blogs);

        // Shorten content so that it can all fit on the blog page
        for (int i = 0; i < acceptedBlogs.size(); i++) {
            String shortStr = acceptedBlogs.get(i).getContent().replaceAll("(.{50})", "$1\n");
            acceptedBlogs.get(i).setContent(shortStr);

        }
        modelAndView.addObject("acceptedBlogs", acceptedBlogs);
        modelAndView.addObject("discardedBlogs", discardedBlogs);

        ViewCount views = viewRepo.findById(1);
        views.setViews(views.getViews()+1);
        modelAndView.addObject("total_views", views.getViews());
        viewRepo.save(views);

        modelAndView.setViewName("homePage");

        return modelAndView;
    }

    @RequestMapping(value = "/aboutUs") // Request to aboutUs page
    public String AboutUs() {
        return "aboutUs";
    }

    @RequestMapping(value = "/resourcePage") // Request to resource page
    public String ResourcePage() {
        return "resourcePage";
    }

    @RequestMapping(value = "/developingProvisionPage") // Request to developing provision page
    public String DevelopingProvisionPage() {
        return "developingProvisionPage";
    }

    @RequestMapping(value = "/evidenceBasePage") // Request to evidence base page
    public String EvidenceBasePage() {
        return "evidenceBasePage";
    }

    @RequestMapping(value = "/joinUs") // Request to evidence base page
    public String JoinUsPage() {
        return "joinUs";
    }

    @RequestMapping(value = "/directoryPage") // Request to directory page
    public String DirectoryPage() {
        return "directoryPage";
    }

    @RequestMapping(value = "/englishLP") // Request to EnglishLP page
    public String EnglishLP() {return "englishLP";}

    @RequestMapping(value = "/refugEAP") // Request to EnglishLP page
    public String RefugEAP() {return "refugEAP";}


    @RequestMapping(value = "/admin/adminPortal") // Request to adminPortal page
    public ModelAndView AdminPortal() {

        ModelAndView modelAndView= new ModelAndView();

        modelAndView.addObject("roles",roleRepo.findAll());

        modelAndView.addObject("users",userRepo.findAll());

        modelAndView.setViewName("adminPortal");

        return modelAndView;
    }

    // Request to adminPortal page to add new admin
    // Adds a new admin to database and encrypts their password
    @RequestMapping(value = "/admin/user/add", method = RequestMethod.POST)
    public String UserAdd(@RequestParam("username") String usr,@RequestParam("password") String pwd,@RequestParam("role") String roleName) {

        User user=new User();
        user.setUsername(usr);
        String encrypPassword= new BCryptPasswordEncoder().encode(pwd);
        user.setPassword(encrypPassword);
        user.setEnabled(true);

        Set<Role> role= new HashSet<>();
        Role role_= roleRepo.getRoleByName(roleName);
        role.add(role_);
        user.setRoles(role);

        userRepo.save(user);

        return "redirect:/admin/adminPortal";

    }

    @RequestMapping(value = "/login") // Request login page
    public ModelAndView Login() {

        ModelAndView modelAndView= new ModelAndView();

        modelAndView.setViewName("login");

        return modelAndView;
    }

    @RequestMapping(value = "/admin/secure") // Start page of the members only section
    public String Secure() {
        return "secure";
    }

    @RequestMapping(value = "/admin/blogManagement")
    public ModelAndView blogManagement() {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all the blogs from the database using the findAll() method
        List<Blog> blogs = (List<Blog>) blogRepo.findByStatus("pending");
        List<Blog> acceptedBlogs = (List<Blog>) blogRepo.findByStatus("approved");
        List<Blog> discardedBlogs = (List<Blog>) blogRepo.findByStatus("deleted");

        // Pass the list of blogs to the JSP view
        modelAndView.addObject("blogs", blogs);
        modelAndView.addObject("acceptedBlogs", acceptedBlogs);
        modelAndView.addObject("discardedBlogs", discardedBlogs);

        modelAndView.setViewName("blogManagement");

        return modelAndView;
    }

    @RequestMapping(value = "/admin/eventManagement")
    public ModelAndView eventManagement() {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all the events from the database using the findAll() method
        List<Event> events = (List<Event>) eventRepo.findByStatus("pending");
        List<Event> acceptedEvents = (List<Event>) eventRepo.findByStatus("approved");
        List<Event> discardedEvents = (List<Event>) eventRepo.findByStatus("deleted");

        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        DateTimeFormatter timeFormatter = DateTimeFormatter.ofPattern("HH-mm");

        // Helper method to format date and time for each event list
        formatEventDateTime(events, dateFormatter, timeFormatter);
        formatEventDateTime(acceptedEvents, dateFormatter, timeFormatter);
        formatEventDateTime(discardedEvents, dateFormatter, timeFormatter);

        // Pass the lists of events to the JSP view
        modelAndView.addObject("events", events);
        modelAndView.addObject("acceptedEvents", acceptedEvents);
        modelAndView.addObject("discardedEvents", discardedEvents);

        modelAndView.setViewName("eventManagement");

        return modelAndView;
    }



    //Mapping to take blog form input and add it to the blog database
    @RequestMapping("/blogPage")
    public String newBlog(Model model) {
        model.addAttribute("blog", new Blog());

        List<Blog> approvedBlogs = blogRepo.findByStatusAndTypeOfContribution("approved", "blog");
        List<Blog> approvedOther = blogRepo.findByStatusAndTypeOfContribution("approved", "other");
        List<Blog> approvedTestimonials = blogRepo.findByStatusAndTypeOfContribution("approved", "testimonial");
        List<Blog> approvedCaseStudies = blogRepo.findByStatusAndTypeOfContribution("approved", "case study");

        // Pass the list of approved blog posts to the blogPage.jsp view
        model.addAttribute("approvedBlogs", approvedBlogs);


        // Shorten content so that it can all fit on the blog page
        for (int i = 0; i < approvedOther.size(); i++) {
            String shortStr = approvedOther.get(i).getContent().replaceAll("(.{50})", "$1\n");
            approvedOther.get(i).setContent(shortStr);

        }
        // Pass the list of approved other posts to the blogPage.jsp view
        model.addAttribute("approvedOther", approvedOther);



        // Shorten content so that it can all fit on the blog page
        for (int i = 0; i < approvedTestimonials.size(); i++) {
            String shortStr = approvedTestimonials.get(i).getContent().replaceAll("(.{50})", "$1\n");
            approvedTestimonials.get(i).setContent(shortStr);

        }
        // Pass the list of approved testimonials to the blogPage.jsp view
        model.addAttribute("approvedTestimonials", approvedTestimonials);


        // Shorten content so that it can all fit on the blog page
        for (int i = 0; i < approvedCaseStudies.size(); i++) {
            String shortStr = approvedCaseStudies.get(i).getContent().replaceAll("(.{50})", "$1\n");
            approvedCaseStudies.get(i).setContent(shortStr);

        }
        // Pass the list of approved case studies to the blogPage.jsp view
        model.addAttribute("approvedCaseStudies", approvedCaseStudies);

        List<Blog> discardedBlogs = blogRepo.findByStatus("deleted");

        // Pass the list of discarded blog posts to the blogPage.jsp view
        model.addAttribute("discardedBlogs", discardedBlogs);

        return "blogPage";
    }

    // Mapping to events page passes all events into jsp to be displayed
    @RequestMapping(value = "/eventPage")
    public String EventPage(Model model) {
        model.addAttribute("event", new Event());
        List<Event> allEvents = (List<Event>) eventRepo.findAll();

        return "eventPage";
    }


    // Add a blog to the database
    @RequestMapping(value = "/addBlog", method = RequestMethod.POST)
    public String addBlog(@RequestParam("name") String name,
                          @RequestParam("email") String email,
                          @RequestParam("title") String title,
                          @RequestParam("content") String content,
                          @RequestParam("affiliation") String affiliation,
                          @RequestParam("role") String role,
                          @RequestParam("typeOfContribution") String typeOfContribution){

        Blog blog = new Blog();
        java.sql.Date currentDate = new java.sql.Date(new Date().getTime());
        blog.setName(name);
        blog.setEmail(email);
        blog.setTitle(title);
        blog.setContent(content);
        blog.setAffiliation(affiliation);
        blog.setRole(role);
        blog.setTypeOfContribution(typeOfContribution);
        blog.setDate(currentDate);

        // Save blog to database
        blogRepo.save(blog);

        // Send email to user that their blog has been recieved
        emailService.sendMessage(email, "RefugEAP","Hi "+ name + ",\n\nWe have received your blog and will check your request withing 7 working days.\n\nYours Sincerely, \nThe RefugEAP team");
        // Send email to refugEAP (Change email to RefugEAP
        emailService.sendMessage("Hazzaemailservice@gmail.com","Blog request",name +" at "+ email + " Has asked to put up a blog this can be accepted/denied on the admin page");

        return "redirect:/blogPage";}

    // Add a event to the database
    @RequestMapping(value = "/addEvent", method = RequestMethod.POST)
    public String addEvent(@RequestParam("name") String name,
                           @RequestParam("email") String email,
                           @RequestParam("event_title") String event_title,
                           @RequestParam("event_datetime") String event_datetime,
                           @RequestParam("event_more_info") String event_more_info ){

        Event event = new Event();
        java.sql.Date currentDate = new java.sql.Date(new Date().getTime());
        event.setName(name);
        event.setEmail(email);
        event.setEvent_title(event_title);
        event.setEvent_datetime(LocalDateTime.parse(event_datetime));
        event.setEvent_more_info(event_more_info);

        // Save event to database
        eventRepo.save(event);

        // Send email to user that their event has been recieved
        emailService.sendMessage(email, "RefugEAP","Hi "+ name + ",\n\nWe have received your event and will check your request withing 7 working days.\n\nYours Sincerely, \nThe RefugEAP team");
        // Send email to refugEAP (Change email to RefugEAP email)
        emailService.sendMessage("Hazzaemailservice@gmail.com","Event request",name +" at "+ email + " Has asked to put up an event this can be accepted/denied on the admin page");

        return "redirect:/eventPage";}

    // Add an event as an admin via the admin portal side
    @RequestMapping(value = "/admin/event/add", method = RequestMethod.POST)
    public String EventAdd(@RequestParam("name") String name,
                           @RequestParam("email") String email,
                           @RequestParam("event_title") String event_title,
                           @RequestParam("event_datetime") String event_datetime,
                           @RequestParam("event_more_info") String event_more_info ) {

        Event event = new Event();
        java.sql.Date currentDate = new java.sql.Date(new Date().getTime());
        event.setName(name);
        event.setEmail(email);
        event.setEvent_title(event_title);
        event.setEvent_datetime(LocalDateTime.parse(event_datetime));
        event.setEvent_more_info(event_more_info);

        // Save the event to database
        eventRepo.save(event);

        return "redirect:/admin/eventManagement";}

    // Method to allow admins to accept event after they have checked it
    @PostMapping(value = "/admin/acceptEvent")
    public String acceptEvent(@RequestParam("event_id") int eventId) {
        // Get the event by ID
        Event event = eventRepo.findById(eventId);
        if (event != null) {
            // Set the status of the event to "approved"
            event.setStatus("approved");
            eventRepo.save(event);
        }
        // Send email to user saying their event has been approved
        emailService.sendMessage(event.getEmail(), "RefugEAP","Hi "+ event.getName() + ",\n\nWe have approved your event and it has now been posted.\n\nYours Sincerely, \nThe RefugEAP team");
        return "redirect:/admin/eventManagement";
    }

    // Method to allow admins to discard event if it's inappropriate
    // Goes to a discard section so isn't gone from the database
    @PostMapping(value = "/admin/discardEvent")
    public String discardEvent(@RequestParam("event_id") int eventId) {
        // Get the event by ID
        Event event = eventRepo.findById(eventId);
        if (event != null) {
            // Set the status of the event to "deleted"
            event.setStatus("deleted");
            eventRepo.save(event);
        }
        // Send email to user saying their event has been discared
        emailService.sendMessage(event.getEmail(), "RefugEAP","Hi "+ event.getName() + ",\n\nWe have declined your event feel free to email for further inquiries into why we have done this.\n\nYours Sincerely, \nThe RefugEAP team");
        return "redirect:/admin/eventManagement";
    }

    // Method to completely remove an event from the database
    @PostMapping(value = "/admin/deleteEvent")
    public String deleteEvent(@RequestParam("event_id") int eventId) {
        // Get the event by ID
        Event event = eventRepo.findById(eventId);
        if (event != null) {
            // Delete the event from the database
            eventRepo.delete(event);
        }
        return "redirect:/admin/eventManagement";
    }

    // Recovers discarded events NOT deleted ones
    @PostMapping(value = "/admin/recoverEvent")
    public String recoverEvent(@RequestParam("event_id") int eventId) {
        // Get the event by ID
        Event event = eventRepo.findById(eventId);
        if (event != null) {
            // Set the status of the event to "pending"
            event.setStatus("pending");
            eventRepo.save(event);
        }
        return "redirect:/admin/eventManagement";
    }

    // Allows admins to add a blog on the admin side
    @RequestMapping(value = "/admin/blog/add", method = RequestMethod.POST)
    public String BlogAdd(@RequestParam("name") String name,
                          @RequestParam("email") String email,
                          @RequestParam("title") String title,
                          @RequestParam("content") String content,
                          @RequestParam("affiliation") String affiliation,
                          @RequestParam("role") String role,
                          @RequestParam("typeOfContribution") String typeOfContribution){

        Blog blog = new Blog();
        java.sql.Date currentDate = new java.sql.Date(new Date().getTime());
        blog.setName(name);
        blog.setEmail(email);
        blog.setTitle(title);
        blog.setContent(content);
        blog.setAffiliation(affiliation);
        blog.setRole(role);
        blog.setTypeOfContribution(typeOfContribution);
        blog.setDate(currentDate);

        // Save blog to database
        blogRepo.save(blog);

        return "redirect:/admin/blogManagement";}


    // Method to allow admins to accept blog after they have checked it
    @PostMapping(value = "/admin/acceptBlog")
    public String acceptBlog(@RequestParam("blog_id") int blogId) {
        // Get the blog by ID
        Blog blog = blogRepo.findById(blogId);
        if (blog != null) {
            // Set the status of the blog to "approved"
            blog.setStatus("approved");
            blogRepo.save(blog);
        }
        emailService.sendMessage(blog.getEmail(), "RefugEAP","Hi "+ blog.getName() + ",\n\nWe have approved your blog and it has now been posted.\n\nYours Sincerely, \nThe RefugEAP team");
        return "redirect:/admin/blogManagement";
    }

    // Method to allow admins to discard blog if it's inappropriate
    // Goes to a discard section so isn't gone from the database
    @PostMapping(value = "/admin/discardBlog")
    public String discardBlog(@RequestParam("blog_id") int blogId) {
        // Get the blog by ID
        Blog blog = blogRepo.findById(blogId);
        if (blog != null) {
            // Set the status of the blog to "deleted"
            blog.setStatus("deleted");
            blogRepo.save(blog);
        }
        emailService.sendMessage(blog.getEmail(), "RefugEAP","Hi "+ blog.getName() + ",\n\nWe have declined your blog feel free to email for further inquiries into why we have done this.\n\nYours Sincerely, \nThe RefugEAP team");
        return "redirect:/admin/blogManagement";
    }

    // Method to completely remove a blog from the database
    @PostMapping(value = "/admin/deleteBlog")
    public String deleteBlog(@RequestParam("blog_id") int blogId) {
        // Get the blog by ID
        Blog blog = blogRepo.findById(blogId);
        if (blog != null) {
            // Delete the blog from the database
            blogRepo.delete(blog);
        }
        return "redirect:/admin/blogManagement";
    }

    // Recovers discarded blogs NOT deleted ones
    @PostMapping(value = "/admin/recoverBlog")
    public String recoverBlog(@RequestParam("blog_id") int blogId) {
        // Get the blog by ID
        Blog blog = blogRepo.findById(blogId);
        if (blog != null) {
            // Set the status of the blog to "pending"
            blog.setStatus("pending");
            blogRepo.save(blog);
        }
        return "redirect:/admin/blogManagement";
    }


    @GetMapping("/api/events")
    @ResponseBody
    public List<Event> getEventsByDate(@RequestParam("date") String date) {
        LocalDate localDate = LocalDate.parse(date);
        List<Event> events = eventRepo.findByEventDatetimeBetween(localDate.atStartOfDay(), localDate.plusDays(1).atStartOfDay());
        return events;
    }

    @RequestMapping("/contactUs")
    public String newContact(Model model) {
        model.addAttribute("contact", new Contact());

        return "contactUs";
    }

    // Add a contact to the database
    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("message") String message){

        System.out.println("test");
        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setMessage(message);

        // Save contact to the database
        contactRepo.save(contact);
        emailService.sendMessage(email, "RefugEAP","Hi "+ name + ",\n\nWe have received your message and will reply withing 7 working days.\n\nYours Sincerely, \nThe RefugEAP team");
        // Send email to refugEAP (Change email to RefugEAP email)
        emailService.sendMessage("Hazzaemailservice@gmail.com","Contact request",name + " wants to get in contact, here is their email if you wish to reply "+ email +"\n\n Here is their message\n\n"+ message);

        return "redirect:/contactUs";}

    @RequestMapping(value = "/admin/contactManagement")
    public ModelAndView contactManagement() {
        ModelAndView modelAndView = new ModelAndView();

        // Fetch all the contacts from the database using the findAll() method
        List<Contact> contacts = (List<Contact>) contactRepo.findByStatus("pending");
        List<Contact> acceptedContacts = (List<Contact>) contactRepo.findByStatus("approved");
        List<Contact> discardedContacts = (List<Contact>) contactRepo.findByStatus("deleted");

        // Pass the list of contacts to the JSP view
        modelAndView.addObject("contacts", contacts);
        modelAndView.addObject("acceptedContacts", acceptedContacts);
        modelAndView.addObject("discardedContacts", discardedContacts);

        modelAndView.setViewName("contactManagement");

        return modelAndView;
    }
    @PostMapping(value = "/admin/acceptContact")
    public String acceptContact(@RequestParam("contact_id") int contactId) {
        // Get the contact by ID
        Contact contact = contactRepo.findById(contactId);
        if (contact != null) {
            // Set the status of the contact to "approved"
            contact.setStatus("approved");
            contactRepo.save(contact);
        }
        return "redirect:/admin/contactManagement";
    }

    @PostMapping(value = "/admin/discardContact")
    public String discardContact(@RequestParam("contact_id") int contactId) {
        // Get the contact by ID
        Contact contact = contactRepo.findById(contactId);
        if (contact != null) {
            // Set the status of the contact to "deleted"
            contact.setStatus("deleted");
            contactRepo.save(contact);
        }
        return "redirect:/admin/contactManagement";
    }

    @PostMapping(value = "/admin/deleteContact")
    public String deleteContact(@RequestParam("contact_id") int contactId) {
        // Get the contact by ID
        Contact contact = contactRepo.findById(contactId);
        if (contact != null) {
            // Delete the contact from the database
            contactRepo.delete(contact);
        }
        return "redirect:/admin/contactManagement";
    }

    @PostMapping(value = "/admin/recoverContact")
    public String recoverContact(@RequestParam("contact_id") int contactId) {
        // Get the contact by ID
        Contact contact = contactRepo.findById(contactId);
        if (contact != null) {
            // Set the status of the contact to "pending"
            contact.setStatus("pending");
            contactRepo.save(contact);
        }
        return "redirect:/admin/contactManagement";
    }


}