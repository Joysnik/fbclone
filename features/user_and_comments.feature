Feature: User manage comments
	In ad my reactions to posts
	As a user
	I want to add or remove comments

Background:
	Given a user with email "demouser@onet.com" is already logged in
	And I can see the first post in my timeline

Scenario: Add new Comment
	When I submit new comment using comment form
	Then I should see my comment for first post in timeline

Scenario: Remove my comment
	Given I have added a comment to the first post
	When I delete comment
	Then post comment should no longer exist