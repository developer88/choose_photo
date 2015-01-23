# Choose a Photo
Webapp that will pair off 16 photos into one-on-one matchups and allow users to vote for which photo they prefer in each pairing.

It is almost the same app as was shown in Social Network movie but it is much better - it has cats, not girls ;) , so it is 100% mi-mi-mi.


![Game from Social Network Movie](http://4.bp.blogspot.com/_OuqJrc-wXgM/TO5co_tAAkI/AAAAAAAAAQs/gwejN5gI9Ak/s1600/the-social-network-review2.jpg)

## Demo

Check it out [here](http://cphoto.herokuapp.com "Choose a Photo") 

## Some info

At first i just decided to load images directly to Angular controller, but it appeared that remote resource did not allow that, so i used httparty instead.

I used devise so i just tuned it's settings and views - nothing more. 

## Tests

I wrote only one feature to complete the Tournament process - only this part can be tricky.
So, to run specs do:

    cucumber

