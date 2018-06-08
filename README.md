# Pamela’s Panel


* Ruby on Rails v.5.2.0
* PostgreSQL


## Goal:

To create an admin panel for a fictitious school whereby the administrator can create users and complete common administrative tasks.


## Learning Objectives:  

Upon successful completion of this project, the student will demonstrate their understanding of Ruby on Rails, UI Branding, Data Integrity, AJAX in Rails, APIs and deploying a Rails application to Heroku.

 
## Instructions:

One of the more common requests received when working as a software developer is to create what’s referred to as an administrative panel or admin panel for short. An admin panel is website, usually proprietary, that is designed to allow people to do common administrative tasks. An example of this is the Wordpress Admin Panel (Links to an external site.)Links to an external site.. In the case of Wordpress, they have created an admin panel for common tasks related to posting content on their website including posting tagging, integration with other apps and theming. If you are not familiar, try signing up for a free account on the wordpress website and familiarize yourself with how their admin panel works.

Pay attention to the following details:

* What is the layout of the website?
* Is this layout effective?
* Why is it laid out this way?
* What is the purpose of this admin panel?
* What are my capabilities when logged in?
* What are my capabilities when logged out?
 
Given all of this information, let’s try building an admin panel of our own. Picture yourself as a junior developer working for a school, much like this one. The principal of the school reaches out to you and asks you to create a website that enables logged in users to do common tasks needed to run a school. When logged in you should be able to manage students, instructors, courses and cohorts.

 
## Challenge:

So as of right now, the assumption is that the person logging in should have access to all of the features available on the site. However, it would be more secure if you had the ability to login as a particular type of user, say as an instructor, where you have limited capabilities. An instructor would only be able to view information on their cohort and students. Everything else would be either locked or hidden. Make your best effort to add this feature to your application.
 

## Completion Requirements:

The completed assignment should:

* have a way to create, display, edit and remove students and
  * first name
  * last name
  * age - must be less than 150
  * highest completed education - should be limited to HS, College, Masters, PHD
  * students have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove instructors
  * first name
  * last name
  * age - must be less than 150
  * salary - cannot be less than 0
  * highest completed education - should be limited to HS, College, Masters, PHD
  * instructors have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove courses
  * name
  * total in class hours - cannot be less than 0
  * courses have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to create, display, edit and remove cohorts
  * name
  * start date
  * end date
  * instructor teaching the cohort
  * students taking in the cohort
  * cohorts have the following information associated with them
  * deletion should be enabled via an ajax call
* have a way to add students to courses
* have a way to add instructors to courses
* be deployed to Heroku