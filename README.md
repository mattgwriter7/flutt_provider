# flutt_provider
Showing a colleague how to work with Provider package...

## Notes   
There are 3 visible pages here:   
1. Start_Page
2. Counter_Page
3. End_Page

Each page is stateless. (Just to really drive home how you can update the state in real-time, using Provider, even though the pages are stateless.)

### Navigation
FORWARD   
I use simple pushes to navigate forward, as in:  
Navigator.of(context).pushNamed('Counter_Page')   

BACKWARD   
To "go back" I rely on the (built-in) back arrow in the AppBar, which does a pop() to destory the current page, and to reveal the one "underneath."

### Provider
There is one provider model: Count()   
It has an int _count, which is initially set to zero.  
(The starting underscore makes it private to this class.)  

There are two methods:  
increment() and reset(), which do what you think they do.  

Because these methods update the UI, each ends with a notifyListeners() method.

notifyListeners() looks for any "watches" on any active page and updates the UI there.  For this demo, the only watch is on the Counter_page, which has the _count value above the button.  

WATCHES AND READS   
In my experience, 99% of the time I use either watch or read.  Watch keeps a constant "watch" of something that needs to change in the UI, and gets openly exposed in the main build() of a page.  

Whereas read is used for a single instance, to "read," or gain access to a method, and is not openly exposed in the build(). You can stick a "read" inside an event, like an "onPressed()" in a button.  This is how I do it here, with the "reset" and "+1" buttons.  





