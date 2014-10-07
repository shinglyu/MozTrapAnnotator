MozTrapAnnotator
================

Scripts to help you annotate MozTrap test cases.

#Usage

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

#Summarize the Results
* Edit ``printCommentSummary.sh`` for the tags and file you want to filter.
* Run ``printCommentSummary.sh`` to see the counts for your tags.
