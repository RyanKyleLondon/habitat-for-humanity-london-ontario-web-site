The final web site's HTML files were generated using the
XML files in this directory. It works very much like templates
in DreamWeaver etc, except only free software was used.

TODO: installing Saxon-B

Here are the details...

----------------- Generating HTML files -----------------------

* Each file ../public_html/ABC.html are generated from
  the corresponding xml/ABC.xml document.
  An XML document contains the bare content for a particular page,
  and is then transformed into an HTML page with menus, layout, etc.

  To edit information in an existing page, say contact.html,
  follow these steps:

     1) Edit the existing text inside xml/contact.xml, using 
        any HTML formatting you like.

     2) Run xml2html.bat

  Now contact.html will include your changes.

  To create a new web page, say newsletter5.html, just start
  by creating xml/newsletter5.xml and copy the following into it:

  <?xml version="1.0" encoding="iso-8859-1"?>
  <webpage title="Habitat for Humanity London">
    <article>
        ... Your article HTML goes here ...
    </article>
  </webpage>

  Or, optionally if you want a margin to appear on the right-hand
  side with space to put other stuff (photos, ads, etc) then
  add a "sidebar" element, like this:

  <?xml version="1.0" encoding="iso-8859-1"?>
  <webpage title="Habitat for Humanity London">
    <article>
        ... Your article HTML goes here ...
    </article>
    <sidebar>
        This HTML appears in a margin!
    </sidebar
  </webpage>
  

----------------- Generating Image/Flash files -----------------------

* Many images that appear under ../public_html/images/ABC.jpg (or png)
  are actually exported versions of the "working" image located here, 
  under images/ABC.psd for example. Same with flash movies.

