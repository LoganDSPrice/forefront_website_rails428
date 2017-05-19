require 'faker'

logan = User.create(admin:true, email:"logandsprice@gmail.com", password:"password", first_name: "Logan", last_name: "Price")
pavan = User.create(email:"pksarguru@gmail.com", password:"password", first_name: "Pavan", last_name: "Sarguru")

# a = logan.articles.create(text:"Holy guacamole! We're doing great!", title:"Beep Boop Bop!")
# aa = pavan.articles.create(text:"Hot tamale arm sweat!", title:"Big Software Strikes Again!")

5.times do
  logan.articles.create(text: Faker::Lorem.paragraph, title: Faker::Lorem.sentence)
  pavan.articles.create(text: Faker::Lorem.paragraph, title: Faker::Lorem.sentence)
end

Article.all.each_with_index do |a,i|
  a.images.create(url:"image_url#{i+1}")
  a.videos.create(url:"video_url#{i+1}")
end

t1 = Tag.create(name: "concrete")
t2 = Tag.create(name: "residential")
t3 = Tag.create(name: "JGMA")
tags = [t1, t2, t3]

#REAL FOREFRONT PROJECTS
neiu = {
  name:"Northeastern Illinois University",
  team_name:"Juan Moreno Architechts (JGMA)",
  location:"Chicago, IL",
  area: 55000,
  description: "The new building will be comprised of a three-story higher education facility with 55,000 SF.  With a modest budget, FSE collaborated with JGMA Architects and NEIU to develop economical structural solutions that celebrate the architecture of the building and functional use of the space.

  The lower level contains auditorium and laboratory space with the upper levels comprised of classroom and break-out areas.  The design solutions contain iconic elements with dramatic cantilevers and a modern expression with structure emphasized throughout the architecture.  The structural system employs sloping columns, cantilevered girders and diagrid framing to achieve the floating ends of the building while the curtainwall system is used for branding, sustainability, and dramatic view of downtown Chicago—all within footsteps of one of the busiest highway corridors of Chicago.",
  featured: true,
  category: "Institutional",
  completion_date: Date.new(2014,1,1)
}
neiu_project = Project.create(neiu)
neiu_project.tags = tags
neiu_project.images.create(url: "NEIU-El-Centro.jpg")

nth = {
  name:"Northwest Tower Hotel",
  team_name:"Antunovich Associates",
  location:"Chicago, IL",
  area: 40000,
  description: "The existing building located at 1600 N. Milwaukee Avenue was constructed in the 1920’s and abuts a heavy storage building along with a vacant lot.
  FSE worked with Antunovich and Convexity Devleopment to modify the existing building into a boutique hotel and retail property. Structural work includes localized micro-pile foundation work, new elevator cores and stairs, a new rooftop solarium and swimming pool along with extensive floor modification and the new construction of a 2-story building with basement.",
  featured: true,
  category: "Hospitality",
  completion_date: Date.new(2016,1,1)
}

nth_project = Project.create(nth)
nth_project.tags = tags
nth_project.images.create(url: "northwest-tower-hotel-landscape.jpg")
nth_project.images.create(url: "northwest-tower-hotel-portrait.jpg")

wccn = {
  name:"Willow Creek Church - Northshore",
  team_name:"Adrian Smith + Gordon Gill Architecture",
  location:"Glenview, IL",
  area: 72000,
  description: "The new 72,000 SF worship facility includes two auditoriums, office space, classroom wings, café and outdoor nature areas.  The building is oval in shape with interior courtyards cuts out from the building.  The design of the building is inspired by the form of a Seed which is a biblical reference and also symbolizes a strong connection of the building design to nature.  The building shape is symmetrical about the north/south axis, and is designed to strategically utilize natural light and to bring the experience of the outdoors to the building occupants.
  FSE collaborated with AS+GG to develop a cost effective graceful structure to achieve these results with a combination of 150-foot clear span trusses, bar joists, curtain-wall and cantilevered steel framing.",
  featured: true,
  category: "Institutional",
  completion_date: Date.new(2016,1,1)
}

wccn_project = Project.create(wccn)
wccn_project.tags = tags
wccn_project.images.create(url: "Willow-Creek-North-Shore.jpg")

bthcfk = {
  name:"By The Hand Club for Kids",
  team_name:"Team A",
  location:"Chicago, IL",
  area: 24000,
  completion_date: Date.today,
  description:"This new building will be approximately 24,000 SF spread over a two story space, with a construction budget of approximately $4 million. The building will be constructed of steel framing, precast and cast-in-place concrete, and conventional spread footings. A portion of the building will contain an outdoor roof deck for community functions.  The building will also contain a gymnasium, auditorium, multi-function class room space, and office space.",
  category: "Institutional"
}

bthcfk_project = Project.create(bthcfk)
bthcfk_project.tags = tags
bthcfk_project.images.create(url: "by_the_hand_club.jpg")


ops = {
  name:"Oak Park Station",
  team_name:"Fitzgerald Associates Architects",
  location:"Oak Park, IL",
  area: 350000,
  completion_date: Date.today,
  description: "Forefront Structural Engineers optimized this 20-story residential tower to include post-tensioned floor slabs and concrete cores for an efficient construction cycle.   The new building contains 191 residential units, 498 parking stalls, ground floor retail and an exterior amenity deck with swimming pool.
  A new structural steel pedestrian bridge will connect the high-rise tower to an adjacent low-rise building.",
  category: "Residential"
}

ops_project = Project.create(ops)
ops_project.tags = tags
ops_project.images.create(url: "oak-park-station.jpg")


vh = {
  name:"203 N Wabash - Virgin Hotel",
  team_name:"Booth Hansen",
  location:"Chciago, IL",
  area: 400000,
  completion_date: Date.today,
  description: "203 N. Wabash was formerly known as the Old Dearborn Bank and was constructed in 1928. The building is comprised of steel frame construction and is founded upon rock caissons. The typical floor construction is comprised of an unique two-way ribbed joists system.

  The building will become the new home for Virgin Hotel Chicago. With limited original documentation and no structural drawings, FSE led a team through selective exploration, documentation, structural analysis and final design to ensure that all the new modifications could be performed successfully.

  Project highlights include strengthening the existing floor structure at various locations including a new fitness/spa amenity level, implementing new elevators and stairs, building a new rooftop bar amenity, and building a new lower level 3 for building function. The project also involves selective demolition and recreation of the original two-story atrium as well as adding a new canopy and modern sidewalk elevator entrance.",
  category: "Hospitality"
}

vh_project = Project.create(vh)
vh_project.tags = tags
vh_project.images.create(url: "virgin-hotel.jpeg")


fulton = {
  name:"1K Fulton",
  team_name:"Hartshorne Plunkard Architects",
  location:"Chicago, IL",
  area: 400000,
  completion_date: Date.today,
  description: "Forefront Structural Engineer is collaboratively working with Hartshorne Plunkard Architect to optimize the adaptive re-use of the existing 10-story cold storage building.  Constructed in 1919, the original building contains a secondary perimeter frame that thermally isolates the building structure.  FSE worked carefully with the contractor, architect, and developer to implement a scheme to decommission the cold storage building and modify the structural elements to include new elevators, mechanical systems, rooftop amenity deck and sub-basement parking.
  Immediately adjacent to the 10-story building, FSE is designing a new modern 7-story office building with a link to the existing building.  The new building will contain ground level retail and sub-grade parking.",
  category: "Commercial"
}

fulton_project = Project.create(fulton)
fulton_project.tags = tags
fulton_project.images.create(url: "1k-fulton.jpg")


t = TeamMember.create(first_name: "Logan", last_name:"Price", role:"Developer", bio: "Whoa baby!", primary_image: "http://lorempixel.com/768/600/people/", secondary_image: "http://lorempixel.com/768/600/people/")
tt = TeamMember.create(first_name: "Pavan", last_name:"Sarguru", role:"Developer", bio: "The NBA is the only sport that matters.", primary_image: "http://lorempixel.com/768/600/people/", secondary_image: "http://lorempixel.com/768/600/people/")
ttt = TeamMember.create(first_name: "Arjun", last_name:"Venkataswamy", role:"Senior Developer", bio: "In some circles...", primary_image: "http://lorempixel.com/768/600/people/", secondary_image: "http://lorempixel.com/768/600/people/")

TeamMember.all.each { |t| t.images.create(url:"www.url-#{t.first_name}.com") }

puts "You have seeded"
