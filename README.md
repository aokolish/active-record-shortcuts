# Active Record Shortcuts (demo rails app)

This is just a tiny rails application demonstrating how you can set up active
record associations that span several models to create a 'short cut'.

If you want to run the code, run the following:

```
bundle install
bin/rake db:setup
bin/rails console
```

The seeds.rb file will set you up with a few orders and a user. You can
then play around with the models to get from a user to the products
they've ordered, or from an order to it's products.

For more info check out [this blog post I wrote](http://aokolish.me/blog/2015/06/22/shortcuts-for-navigating-nested-associations/).
