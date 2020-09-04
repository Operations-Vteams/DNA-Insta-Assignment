# 
A working sample that implements MVVM, RxSwift and Clean architecture.

App Flow:

It loads posts-data from local database, if previously persisted, and loads grid of posts, in the meantine, send request to Netwrok manager for fresh data, which returns mocked data from JSON file. Upon retrival data from network, the controller loads fresh data. Also, the updated data is saved to database.

A couple of unit tests are added for PostsListViewController to demonstrate Unit testing capabilities.

