# SSSingletonDataExchange
Super simple singleton for passing data between UIViewControllers
There are a lot of ways to pass data between view controllers. Most are funky at best. Here's an easy way to pass data using a singleton "data manager". GCD is being used to ensure the call is thread-safe and only called once during the app lifecylce. Simple stuff! 
