var cheerio = require('cheerio');
var fs      = require('fs');

var mozTrapBaseUrl = 'https://moztrap.mozilla.org'
var f = fs.readFileSync('tmp.html')
//$ = cheerio.load('<html><head></head><body><div id="content"><div id="sidebar"></div><div id="main"><div id="breadcrumbs"></div><table id="data"><tr><th>Name</th><th>Address</th></tr><tr><td class="name">John</td><td class="address">Address of John</td></tr><tr><td class="name">Susan</td><td class="address">Address of Susan</td></tr></table></div></div></body></html>');
$ = cheerio.load(f);

$('article.listitem').each(function() {
      var title = $(this).find('h3.title').text()
      //console.log(title);

      var priority = $(this).find('div.priority').text()
      //console.log(priority);

      var product = $(this).find('div.product').text()
      //console.log(product);

      var modified = $(this).find('div.modified').text()
      //console.log(modified); 
      var detailUrl = $(this).find('a.summary.item-summary').attr('href')
      detailUrl = mozTrapBaseUrl + detailUrl;
      detailUrl = '=HYPERLINK(\"'+ detailUrl + '\")'
      //console.log(modified);

      list = [title, priority, product, modified, detailUrl];
      listWQuotes = [];
      list.forEach(function(item){
        listWQuotes.push('"' + item + '"');
      })
      console.log(listWQuotes.join(','))
});
