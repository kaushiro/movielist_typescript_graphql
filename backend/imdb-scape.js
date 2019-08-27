const request = require("request");
const cheerio = require("cheerio");
const fs = require("fs");

const URL = "https://www.imdb.com/list/ls055592025/";

request(URL, (err, response, html) => {
  if (err) return console.error(err);

  const $ = cheerio.load(html);
  const data = [];

  $(".lister-list")
    .children()
    .each((index, child) => {
      const cheerioChild = $(child);

      const title = cheerioChild
        .find(".lister-item-content .lister-item-header a")
        .text();

      const thumbnail = cheerioChild
        .find(".lister-item-image a img")
        .attr("loadlate");

      const year = Number(
        cheerioChild
          .find(".lister-item-content .lister-item-header :nth-child(3)")
          .text()
          .slice(1, -1)
      );

      const description = cheerioChild
        .find('.lister-item-content p[class=""]')
        .text();

      let director;
      cheerioChild
        .find(".lister-item-content .text-muted")
        .each((index, element) => {
          if (
            $(element)
              .text()
              .indexOf("Director") !== -1
          ) {
            director = $(element)
              .find("a:first-child")
              .text();
          }
        });

      const imdb_rating = Number(
        cheerioChild
          .find(".lister-item-content .ipl-rating-star__rating")
          .first()
          .text()
      );

      const run_time = Number(
        cheerioChild
          .find(".lister-item-content .runtime")
          .text()
          .split(" ")[0]
      );

      data.push({
        title,
        year,
        description,
        director,
        imdb_rating,
        run_time,
        thumbnail
      });
    });

  fs.writeFile("data.json", JSON.stringify({ movies: data }), err => {
    if (err) throw err;
    console.log("file written");
  });
});
