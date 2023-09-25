<h2>Henry Meds</h2>

This is a very quick and basic implementation of HenryMeds Backend v2 coding assignment. The basic idea is to allow 
a client to see when their provider is available and to schedule an appointment. It should also allow providers the ability
to set their office hours. 

<h3>Some limitations due to the lack of time:</h3>
* Controllers should control what is sent to the front end not just return exactly what the service returns.
* Services should either return data or throw custom errors, not just return strings.
* Unit tests for the services were written but not implemented. Being written should help if, in the future, there is time to add tests, if a bug is found, or a new feature is needed.
* There are no protections around creating an appointment on a 15 minute increment. 
* There is no authentication or authorization for clients or providers.
* Ideally, there would be tests for the controllers once they control what is sent, not just pass through what the service sends. 
* Rubocop (code formatting) should be adjusted to company standards and so that no offenses are found.
* The Rails generation I used generated things that are not needed for an API. Those should be removed for better understanding.
* Database models should be annotated with their fields and relations defined in Ruby.
* Providers should be able to have multiple schedules in a single day to allow for blocking off a lunch hour.
* There should be full CRUD capabilities for all the models (although some should only be allowed to admins)
* Normally there should be multiple commits for easy code reviews 