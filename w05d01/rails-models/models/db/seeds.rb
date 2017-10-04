# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
	videos = Video.create([
		{ 
			name: 'How GOOD was Smeargle ACTUALLY?', 
			description: 'SMEARGLE! The Painter Pokemon! ',
			url: 'https://www.youtube.com/watch?v=_N1PnP7e1pA'
			},
		{ name: 'Toto - Africa',
			description: 'Totos official music video for Africa ',
			url: 'https://www.youtube.com/watch?v=FTQbiNvZqaY&list=RDFTQbiNvZqaY'
			},
		{ name: 'WTF is... Cuphead ?',
			description: 'TotalBiscuit takes a look at a 2d boss-rush/platformer with a distinctly old-school cartoon aesthetic which will test your skill and patience.',
			url: 'https://www.youtube.com/watch?v=hy6dXSYNvX8'
			},
		{ name: 'The Problem with Time & Timezones - Computerphile',
			description: 'A web app that works out how many seconds ago something happened. How hard can coding that be? Tom Scott explains how time twists and turns like a twisty-turny thing. Its not to be trifled with!',
			url: 'https://www.youtube.com/watch?v=-5wpm-gesOY'
		}
			])

#   Character.create(name: 'Luke', movie: movies.first)
