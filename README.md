MozTrapHelpers
================
#This repo is deprecated, please use [MozTrapHelper](https://github.com/shinglyu/MozTrapHelper).

Scripts to help you work with MozTrap test cases.

----
##MozTrapHelper
The MozTrapHelper is now separated out as a Firefox Addon. The other scripts are still valid, but please consider using the new addon.

###Installation
https://addons.mozilla.org/zh-tw/firefox/addon/moztraphelper/

###Documentation
https://cdn.rawgit.com/shinglyu/MozTrapAnnotator/master/doc/moztraphelper_doc.html

-----
(**The scripts below are no longer maintained, please consider using the addon above**.)

##MozTrapAnnotator
Scripts to help you annotate MozTrap test cases.

###Usage

* Open the MozTrap page you want to annotate.
* If you want to see all test cases steps:
  * Press <kbd>F12</kbd> (in Firefox) to open the debug console.
  * Execute the following code (may freeze the browser for a few seconds!):
    ```
    $('.summary.item-summary').click()
    ```
  * Right click > Save Page As... > Choose "Web Page, complete", save the page to this folder.
* Run 
```addComments.sh </path/to/the/saved/page.html>```
* Open the saved page in the browser, add annotation to the text boxes below each test case.
* Remeber to save the page often.

###Summarize the Results
* Edit ``printCommentSummary.sh`` for the tags and file you want to filter.
* Run ``printCommentSummary.sh`` to see the counts for your tags.

----

##MozTrap to csv exporter
Export MozTrap test cases to csv.

###Dependencies
You will need:
* Node.js 
* cheerio 

>For Ubuntu:
>```
>$ sudo apt-get install nodejs npm
>$ sudo update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10``
>$ npm install cheerio
>```

###Usage

* Run

```
./moztrap2csv.sh "[moztrap url]" 
```

> Remember to use the "get a share-able link to this list" icon on the top-left corner of MozTrap.
> Remeber to add quotes around the url.



