GEO 511 Final Project Proposal
================
Amanda Waggoner
10/18/2021

# Introduction to Problem/Question

Brooklyn, NY is one of the major boroughs of New York City, NY. Known
for its diverse populace, art and music scene, the borough has become a
hub for many to live and explore the area. In the mid-1830s to the
beginning of the 1900s, Brooklyn was a hub for many immigrants to start
their lives together. A multicultural melting pot, just like the rest of
New York City, Brooklyn contained Blacks, Asians, Latinos, and European
migrants within its boundaries. However, New York City’s demography
shifted with the rise of the industrial revolution and the impacts of
World Wars I/II. Economically, many shipping and manufacturing
industries left the city as a whole, causing crime, job losses, and
people moving out from the city (Freudenheim 14).

    Because of these shifts, throughout the 1950s, 60s and 70s, Brooklyn kept declining in population. However, immigration ensued as people from other countries kept coming to America to find new ways of life. Brooklyn began to return back to its original prowess in the mid-1980s, as parks, buildings, homes, etc. were revitalized by wealthier patrons moving into the area. Gentrification ensued, and urban renewal policies began to take foot in many neighborhoods within Brooklyn. From the 1980s onward, toward the new millennium, Brooklyn began to become further and further gentrified and was dubbed one of the “most desirable places to live” during the 2010s (Freudenheim 14). 

    How did these changes impact the Black communities living within Brooklyn? Initially, during the late 1800s, as freed slaves began to escape and live towards the north, Black populations rose in many urban areas like Philadelphia, Washington, D.C., and other cities across the United States. New York was another city where freed Blacks lived and escaped towards, and similar to Harlem, Brooklyn was another location within New York City where Blacks felt safe to establish community in. Because of the community that Blacks established in Brooklyn, many types of businesses: (churches, restaurants, schools, nightlife, etc.), were established for and by Black Brooklynites. 

As time progressed, closer to the new millennium, white gentrifiers
replaced and outnumbered the Black populace of Brooklyn. Many formerly
majority Black neighborhoods within Brooklyn were becoming increasingly
more populated by “upper-class whites” (Chronopoulos 2020). Because of
these changes, many Black Brooklynites felt displaced and removed from
the communities they established and created, feeling as if their
legacies were being removed from the neighborhoods they inhabited.
Gentrification not only displaced Black inhabitants from their homes but
also displaced Black Brooklynites from their businesses and general
sense of community (Valli 2016).

# Problem / Question

This project will analyze gentrification in Brooklyn, NYC via Black
music venues. Using R and spatial data, I will answer the following
research questions: How Black music venues-as an extension of the
greater, Black community within Brooklyn-were affected as gentrification
ensued over the new millennium? What are the ways in which Black music
venues were erased from their neighborhoods within Brooklyn? What venues
still remain? How has the Black population shifted in accordance with
the changes in these venues over time?

# Inspiring Examples

Below are a series of examples that describe similar findings using
demographic data and maps.

## Example 1

![](http://www.zevross.com/blog/wp-content/uploads/2018/09/map_facet_long.png)

This graphic displays a demographic data mapped over time. Although,
this is not business data, this is a similar style of map that I want to
create. \#\# Example 2

![](http://www.zevross.com/blog/wp-content/uploads/2018/09/map_facet_wide.jpg)
Another example of the mapping style that I want to have - comparing
demographic data that has changed over time.

# Proposed Data Sources

Data sources will contain:

1.  Census Tract shapefiles of racial demographics from 2000 to 2020.
    (The goal for the purposes of this class project is to breakdown the
    racial data by every ten years so 2000, 2010, 2020, respectively.)

2.  Yelp API (This will be used to download the information from
    Black-owned music venues from 2000 to 2020. Similar to the census
    data, this will broken down in ten year increments.)

# Proposed Methods

-   Following the methodology from this website:
    <https://billpetti.github.io/2017-12-23-use-yelp-api-r-rstats/>, I
    aim to follow a similar procedure for extracting data from Yelp
    into R. (The steps below have been simplified/summarized for the
    purpose of this proposal.)

1.  Creating a token the will extract data from the Brooklyn, NY City
    area.

2.  Parse the data and build a query that is designated to look for
    music venues, specifically.

3.  After doing that, it should create a list of venues within the
    search radius from my query.

Secondly, I intend on creating a series of maps, chronologically, using
tmap, ggplot2 that display the census tract data and Yelp business data.
There is a methodology, featured on this website
(<http://zevross.com/blog/2018/10/02/creating-beautiful-demographic-maps-in-r-with-the-tidycensus-and-tmap-packages/#part-1-using-tidycensus-to-collect-us-census-data>),
that details how to add census data into R by using the tidyverse.

# Expected Results

I would like to produce a map that displays several Black-owned music
venues from 2000 to 2020, overlaid by racial census tract data from the
same time period, within predominately Black Brooklyn neighborhoods. My
hypothesis is that this map will display a diminishing amount of
Black-owned music venues in the Black Brooklyn neighborhoods because of
how heavily gentrified Brooklyn has become over the past twenty years.

# References

Chronopoulos, Themis. “‘What’s Happened to the People?’ Gentrification
and Racial Segregation in Brooklyn.” Journal of African American
Studies, vol. 24, no. 4, 2020, pp. 549–572.,
<https://doi.org/10.1007/s12111-020-09499-y>.

Freudenheim, Ellen. The Brooklyn Experience: The Ultimate Guide to
Neighborhoods & Noshes, Culture & the Cutting Edge. Rutgers University
Press, 2016.

Valli, Chiara. “Artistic Careers in the Cyclicality of Art Scenes and
Gentrification: Symbolic Capital Accumulation through Space in Bushwick,
NYC.” Urban Geography, 2021, pp. 1–23.,
<https://doi.org/10.1080/02723638.2021.1902122>.
