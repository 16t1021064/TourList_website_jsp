package com.van.travel.admin.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.van.travel.models.Activity;
import com.van.travel.models.Blog;
import com.van.travel.models.Comment;
import com.van.travel.models.Destination;
import com.van.travel.models.Itinerary;
import com.van.travel.models.Review;
import com.van.travel.models.Service;
import com.van.travel.models.Tour;
import com.van.travel.models.TourActivity;

/**
 * Servlet implementation class TestAdmin
 */
@WebServlet("/admin/test")
public class TestAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String[] imgs = new String[] {
//			"https://i.imgur.com/ZDwuggC.jpg",
//			"https://i.imgur.com/XXLtxhz.jpg",
//			"https://i.imgur.com/GCWCDDc.jpg",
//			"https://i.imgur.com/7burT0V.jpg",
//			"https://i.imgur.com/EGdPGBd.jpg",
//			"https://i.imgur.com/LxUUqZa.jpg",
//			"https://i.imgur.com/uaXQNdo.jpg",
//			"https://i.imgur.com/v0ecNwo.jpg"
//		};
//		String[] states = new String[] {
//			"Timoa Rymaar",
//			"Marreha",
//			"Ratnited Georne",
//			"Jikyrgy",
//			"Jocy",
//			"Croalandbia Isles",
//			"Lauandly",
//			"Kolygium"
//		};
//		String[] nations = new String[] {
//				"Macau",
//				"The Gambia",
//				"Tokelau",
//				"Bonaire",
//				"Anguilla",
//				"Uruguay",
//				"Aruba",
//				"Turkey"
//			};
//		ArrayList<Activity> activities = (new Activity()).all();
//		ArrayList<Blog> blogs = (new Blog()).all();
//		ArrayList<Destination> destinations = (new Destination()).all();
//		ArrayList<Tour> tours = (new Tour()).all();
		
//		this.createBlogs(request, response, imgs);
//		this.createComments(request, response, blogs);
//		this.createTours(request, response, imgs, activities, states, nations, destinations); Error destination only have 6, while loop 8
//		this.createReviews(request, response, tours);
		
		response.getWriter().append("Complete");
	}
	
	private void createBlogs(HttpServletRequest request, HttpServletResponse response, String[] imgs) throws ServletException, IOException {
		int cnt = 0;
		for(String img : imgs) {
			cnt = cnt + 1;
			String tempTitle = "Demo Blog Title ";
			String tempSlug = "demo-blog-slug-";
			Blog blog = (new Blog()).create(
				tempTitle + cnt, 
				img, 
				tempSlug + cnt, 
				"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.", 
				"<h3 style=\"margin: 15px 0px; padding: 0px; font-weight: 700; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><font size=\"5\">De Finibus Bonorum et Malorum</font></h3><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">t vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span><font size=\"5\"><br></font></div><div><ul><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto<br></span></li><li><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos</span></li></ul><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><span style=\"font-size: 14px;\"><br></span></font></div>", 
				"chelbay",
				new Date()
			);
			blog.setTags("travel, hot, cheap, vietnam");
		}
	}
	
	private void createComments(HttpServletRequest request, HttpServletResponse response, ArrayList<Blog> blogs) throws ServletException, IOException {
		int cnt = 0;
		for(Blog blog : blogs) {
			cnt = cnt + 1;
			Comment comment = (new Comment()).create(blog.getId(), "Chelbay", "chelbayqn@gmail.com", "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum", new Date());
		}
	}
	
	private void createReviews(HttpServletRequest request, HttpServletResponse response, ArrayList<Tour> tours) throws ServletException, IOException {
		int cnt = 0;
		for(Tour tour : tours) {
			cnt = cnt + 1;
			Review review = (new Review()).create(tour.getId(), "Chelbay", "chelbayqn@gmail.com", "0123456789", "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium", new Date());
		}
	}
	
	private void createTours(HttpServletRequest request, HttpServletResponse response, String[] imgs, ArrayList<Activity> activities, String[] states, String[] nations, ArrayList<Destination> destinations) throws ServletException, IOException {
		int cnt = 0;
		int cnt2 = -1;
		Random r = new Random();
		int max_activities = activities.size();
		for(String img : imgs) {
			cnt = cnt + 1;
			cnt2 = cnt2 + 1;
			String tempName = "Demo Tour Name ";
			String tempSlug = "demo-blog-slug-";
			
			Tour tour = (new Tour()).create(
				tempName + cnt, 
				img, 
				states[cnt2], 
				nations[cnt2], 
				"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi", 
				5, 
				6, 
				"7 Days 8 Nights", 
				new Date(), 
				new Date(), 
				44.55, 
				33.44, 
				11, 
				100, 
				56, 
				"<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus. Donec id elit non mi porta gravida at eget metus.</span><div><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Nulla vitae elit libero, a pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</span><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\"><br></span></div>", 
				"Da Nang", 
				new Date(), 
				"<span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla.</span><div><ul><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ipsum Amet Mattis Pellentesque<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Ultricies Vehicula Mollis Vestibulum Fringilla<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Condimentum Sollicitudin Fusce Vestibulum Ultricies<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Sollicitudin Consectetur Quam Ligula Vehicula<br></span></li><li><span style=\"color: rgb(140, 140, 140); font-family: Poppins, sans-serif; font-size: 14px;\">Cursus Pharetra Purus Porta Parturient<br></span></li></ul></div>", 
				destinations.get(cnt2).getId()
			);
			
			int act1 = r.nextInt(max_activities);
			int act2;
			do {
				act2 = r.nextInt(max_activities);
			}while(act1 == act2);
			(new TourActivity()).create(tour.getId(), activities.get(act1).getId());
			(new TourActivity()).create(tour.getId(), activities.get(act2).getId());
			for(int i = 0; i <4; i =i +1) {
				(new Itinerary()).create(tour.getId(), i + 1, "At vero eos et accusamus et", "We’ll meet at 4 p.m. at our hotel in Luzern (Lucerne) for a “Welcome to Switzerland” meeting. Then we’ll take a meandering evening walk through Switzerland’s most charming lakeside town, and get acquainted with one another over dinner together. Sleep in Luzern (2 nights). No bus. Walking: light.");
			}
			for(int i =0 ; i <8; i = i+ 1) {
				(new Service()).create(tour.getId(), cnt % 2 == 0 ? false : true, "Service Name "+ cnt);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
