Setup
Clone the Repository:
git clone [repository-url]
cd [repository-directory]

Install Dependencies:
Run the following command to install the necessary gems:

bundle install


Running the Tests
Update Configuration:

Open spec/requests/api_spec.rb.
Replace https://dummy.restapiexample.com/api/v1/employees with the actual API base URL.
Modify the endpoint /employee and authentication details ('username' and 'password') as needed.
Run RSpec Tests:
Execute the tests using:

bundle exec rspec
This command will run the tests and verify that the API requests return the expected status codes.

Replace [repository-url] and [repository-directory] with the actual values for your repository.
