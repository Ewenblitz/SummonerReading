# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tgr = Mangas.create!(name: "Tokyo Ghoul:Re", athor:"Sui Ishida", synopsys: "Two years have passed since the CCG's raid on Anteiku. Although the atmosphere in Tokyo has changed drastically due to the increased influence of the CCG, ghouls continue to pose a problem as they have begun taking caution, especially the terrorist organization Aogiri Tree, who acknowledge the CCG's growing threat to their existence.", photo:"", nb_tome: 15)
bleach = Mangas.create!(name: "Bleach", athor: "Tite Kubo", synopsys: "Ichigo Kurosaki is a high schooler with the ability to see spirits, but he has a relatively normal life -- until the day his path crosses with the Soul Reaper, Rukia Kuchiki. Rukia has a duty to guide spirits to the afterlife, but also to eradicate the masked monsters known as “Hollows”.", photo:"",nb_tome: 74)
nnt = Mangas.create!(name: "Nanatsu no Taizai", athor: "Nakaba Suzuki", synopsys:"The \"Seven Deadly Sins\", a group of evil knights who conspired to overthrow the kingdom of Britannia, were said to have been eradicated by the Holy Knights, although some claim that they still live. Ten years later, the Holy Knights have staged a Coup d'état and assassinated the king, becoming the new, tyrannical rulers of the kingdom. Elizabeth, the king's daughter, sets out on a journey to find the \"Seven Deadly Sins\", and to enlist their help in taking back the kingdom.", photo: , nb_tome: 31)
magi = Mangas.create!(name: "Magi The Labyrinth of Magic", athor: "	Shinobu Ohtaka", synopsys: "Dispersed around the world, there are several bizarre labyrinths hiding incredible treasures within them. These mysterious places, known as \"Dungeons,\" are said to be the work of Magi, a class of rare magicians, who also help people build their empires by guiding them to a dungeon. Djinns, supernatural beings that rule over the labyrinths, grant successful conquerors access to their immense power and choose them as potential king candidates to rule the world.", photo: , nb_tome: 37)
overlord = Mangas.create!(name: "Overlord", athor: "Kugane Maruyama", synopsys: "The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful wizard and master of the dark guild Ainz Ooal Gown, decides to spend his last few moments in the game as the servers begin to shut down. To his surprise, despite the clock having struck midnight, Momonga is still fully conscious as his character and, moreover, the non-player characters appear to have developed personalities of their own!", photo: , nb_tome: 6)

tgr1 = Tomes.create!(name: "Tome 1", number: 1, nb_chapter: 9, mangas_id:tgr.id)
tgr2 = Tomes.create!(name: "Tome 2", number: 2, nb_chapter: 11, mangas_id:tgr.id)
tgr3 = Tomes.create!(name: "Tome 3", number: 3, nb_chapter: 12, mangas_id:tgr.id)
tgr4 = Tomes.create!(name: "Tome 4", number: 4, nb_chapter: 11, mangas_id:tgr.id)

bleach1 = Tomes.create!(name: "The Death And The Strawberry", number: 1, nb_chapter: 7, mangas_id: bleach.id)
bleach2 = Tomes.create!(name: "Goodbye Parakeet, Goodnite My Sista", number: 2, nb_chapter: 9, mangas_id: bleach.id)
bleach3 = Tomes.create!(name: "Memories In The Rain", number: 3, nb_chapter: 9, mangas_id: bleach.id)
bleach4 = Tomes.create!(name: "Quincy Archer Hates You", number: 4, nb_chapter: 9, mangas_id: bleach.id)

nnt1 = Tomes.create!(name: "Tome 1", number: 1, nb_chapter: 5, mangas_id:nnt.id)
nnt2 = Tomes.create!(name: "Tome 2", number: 2, nb_chapter: 9, mangas_id:nnt.id)
nnt3 = Tomes.create!(name: "Tome 3", number: 3, nb_chapter: 9, mangas_id:nnt.id)
nnt4 = Tomes.create!(name: "Tome 4", number: 4, nb_chapter: 8, mangas_id:nnt.id)

magi1 = Tomes.create!(name: "Tome 1", number: 1, nb_chapter: 7, mangas_id:magi.id)
magi2 = Tomes.create!(name: "Tome 2", number: 2, nb_chapter: 10, mangas_id:magi.id)
magi3 = Tomes.create!(name: "Tome 3", number: 3, nb_chapter: 10, mangas_id:magi.id)
magi4 = Tomes.create!(name: "Tome 4", number: 4, nb_chapter: 10, mangas_id:magi.id)

overlord1 = Tomes.create!(name: "Tome 1", number: 1, nb_chapter: 4, mangas_id:overlord.id)
overlord2 = Tomes.create!(name: "Tome 2", number: 2, nb_chapter: 4, mangas_id:overlord.id)
overlord3 = Tomes.create!(name: "Tome 3", number: 3, nb_chapter: 3, mangas_id:overlord.id)
overlord4 = Tomes.create!(name: "Tome 4", number: 4, nb_chapter: 4, mangas_id:overlord.id)

Chapters.create!(name:"Bone" ,number:1 ,pages:44 ,tomes_id:tgr1.id )
Chapters.create!(name:"Reader to Leader" ,number:2 ,pages:22 ,tomes_id:tgr1.id  )
Chapters.create!(name:"Bell" ,number:3 ,pages:22 ,tomes_id:tgr1.id  )
Chapters.create!(name:"Sheep and Master, Vision and Corpse" ,number:4 ,pages:18 ,tomes_id:tgr1.id  )

Chapters.create!(name:"Pseudo-Limit" ,number:10 ,pages:18 ,tomes_id:tgr2.id )
Chapters.create!(name:"The Value of Waiting" ,number:11 ,pages:19 ,tomes_id:tgr2.id )
Chapters.create!(name:"Withered Souls" ,number:12 ,pages:19 ,tomes_id:tgr2.id )
Chapters.create!(name:"Ah, it Shall Rain Blood" ,number:13 ,pages:18 ,tomes_id:tgr2.id )

Chapters.create!(name:"Select" ,number:21 ,pages:18 ,tomes_id:tgr3.id )
Chapters.create!(name:"Misrun" ,number:22 ,pages:19 ,tomes_id:tgr3.id )
Chapters.create!(name:"Perry" ,number:23 ,pages:18 ,tomes_id:tgr3.id )
Chapters.create!(name:"Caring Feeling" ,number:24 ,pages:18 ,tomes_id:tgr3.id )

Chapters.create!(name:"To Eat One's Fill" ,number:32 ,pages:18 ,tomes_id:tgr4.id )
Chapters.create!(name:"Embracing Books" ,number:33 ,pages:19 ,tomes_id:tgr4.id )
Chapters.create!(name:"Great Shape" ,number:34 ,pages:18 ,tomes_id:tgr4.id )
Chapters.create!(name:"Dependence" ,number:35 ,pages:18 ,tomes_id:tgr4.id )

Chapters.create!(name:"Death & Strawberry" ,number:1 ,pages:59 ,tomes_id:bleach1.id )
Chapters.create!(name:"Starter" ,number:2 ,pages:24 ,tomes_id:bleach1.id )
Chapters.create!(name:"Head-Hittin'" ,number:3 ,pages:22 ,tomes_id:bleach1.id )
Chapters.create!(name:"Why Do You It?" ,number:4 ,pages:20 ,tomes_id:bleach1.id )

Chapters.create!(name:"Chase Chad Around" ,number:8 ,pages:25 ,tomes_id:bleach2.id )
Chapters.create!(name:"Monster And a Transfer" ,number:9 ,pages:20 ,tomes_id:bleach2.id )
Chapters.create!(name:"Monster And a Transfer pt.2" ,number:10 ,pages:20 ,tomes_id:bleach2.id )
Chapters.create!(name:"Back" ,number:11 ,pages:20 ,tomes_id:bleach2.id )

Chapters.create!(name:"6/17" ,number:17 ,pages:25 ,tomes_id:bleach3.id )
Chapters.create!(name:"6/17 op.2\"Can't Smile Don't Blame\"" ,number:18 ,pages:18 ,tomes_id:bleach3.id )
Chapters.create!(name:"6/17 op.3\"memories in the rain\"" ,number:19 ,pages:18 ,tomes_id:bleach3.id )
Chapters.create!(name:"6/17 op.4\"face again\"" ,number:20 ,pages:22 ,tomes_id:bleach3.id )

Chapters.create!(name:"Paradise Is Nowhere" ,number:26 ,pages:20 ,tomes_id:bleach4.id )
Chapters.create!(name:"Spirits Ain't Always With Us" ,number:27 ,pages:20 ,tomes_id:bleach4.id )
Chapters.create!(name:"Symptom of Synesthesia" ,number:28 ,pages:20 ,tomes_id:bleach4.id )
Chapters.create!(name:"Stop that Stupid!!" ,number:29 ,pages:20 ,tomes_id:bleach4.id )

Chapters.create!(name:"The Seven Deadly Sins" ,number:1 ,pages:64 ,tomes_id:nnt1.id )
Chapters.create!(name:"The Holy Knight\'s Sword" ,number:2 ,pages:40 ,tomes_id:nnt1.id )
Chapters.create!(name:"What One Must Do" ,number:3 ,pages:30 ,tomes_id:nnt1.id )
Chapters.create!(name:"The Sin in the Sleeping Forest" ,number:4 ,pages:21 ,tomes_id:nnt1.id )

Chapters.create!(name:"The Holy Knight Gilthunder" ,number:6 ,pages:20 ,tomes_id:nnt2.id )
Chapters.create!(name:"Dark Prisoner" ,number:7 ,pages:20 ,tomes_id:nnt2.id )
Chapters.create!(name:"A Girl's Dream" ,number:8 ,pages:25 ,tomes_id:nnt2.id )
Chapters.create!(name:"No Touching" ,number:9 ,pages:21 ,tomes_id:nnt2.id )

Chapters.create!(name:"Caught In the Reunion" ,number:15 ,pages:21 ,tomes_id:nnt3.id )
Chapters.create!(name:"The Poem of Beginnings" ,number:16 ,pages:22 ,tomes_id:nnt3.id )
Chapters.create!(name:"Storm's Brewing" ,number:17 ,pages:21 ,tomes_id:nnt3.id )
Chapters.create!(name:"A Touching Reunion" ,number:18 ,pages:24 ,tomes_id:nnt3.id )

Chapters.create!(name:"Someday, I Swear" ,number:23 ,pages:20 ,tomes_id:nnt4.id )
Chapters.create!(name:"The Pursued Legends" ,number:24 ,pages:20 ,tomes_id:nnt4.id )
Chapters.create!(name:"Four-On-One, If It's All Right" ,number:25 ,pages:20 ,tomes_id:nnt4.id )
Chapters.create!(name:"Farewell To The Deceased" ,number:26 ,pages:20 ,tomes_id:nnt4.id )

Chapters.create!(name:"His Name is Aladdin" ,number:1 ,pages:54 ,tomes_id:magi1.id )
Chapters.create!(name:"His Name is Alibaba" ,number:2 ,pages:34 ,tomes_id:magi1.id )
Chapters.create!(name:"Aladdin and Alibaba" ,number:3 ,pages:24 ,tomes_id:magi1.id )
Chapters.create!(name:"Dungeon Suite" ,number:4 ,pages:18 ,tomes_id:magi1.id )

Chapters.create!(name:"Aladdin\'s True Identity" ,number:8 ,pages:18 ,tomes_id:magi2.id )
Chapters.create!(name:"Tyrant" ,number:9 ,pages:18 ,tomes_id:magi2.id )
Chapters.create!(name:"Sabotage" ,number:10 ,pages:19 ,tomes_id:magi2.id )
Chapters.create!(name:"Necropolis" ,number:11 ,pages:18 ,tomes_id:magi2.id )

Chapters.create!(name:"Rukh" ,number:18 ,pages:18 ,tomes_id:magi3.id )
Chapters.create!(name:"The Great Kouga Empire" ,number:19 ,pages:18 ,tomes_id:magi3.id )
Chapters.create!(name:"Slave Hunting" ,number:20 ,pages:18 ,tomes_id:magi3.id )
Chapters.create!(name:"Legend" ,number:21 ,pages:18 ,tomes_id:magi3.id )

Chapters.create!(name:"The \"Finalist\" Warrior Clan" ,number:28 ,pages:18 ,tomes_id:magi4.id )
Chapters.create!(name:"Slave" ,number:29 ,pages:18 ,tomes_id:magi4.id )
Chapters.create!(name:"Miracle" ,number:30 ,pages:18 ,tomes_id:magi4.id )
Chapters.create!(name:"Banquet" ,number:31 ,pages:21 ,tomes_id:magi4.id )

Chapters.create!(name:"Episode 01" ,number:1 ,pages:60 ,tomes_id:overlord1.id )
Chapters.create!(name:"Episode 02" ,number:2 ,pages:44 ,tomes_id:overlord1.id )
Chapters.create!(name:"Episode 03" ,number:3 ,pages:34 ,tomes_id:overlord1.id )
Chapters.create!(name:"Episode 04" ,number:4 ,pages:34 ,tomes_id:overlord1.id )

Chapters.create!(name:"Episode 05" ,number:5 ,pages:44 ,tomes_id:overlord2.id )
Chapters.create!(name:"Episode 06" ,number:6 ,pages:36 ,tomes_id:overlord2.id )
Chapters.create!(name:"Episode 07" ,number:7 ,pages:44 ,tomes_id:overlord2.id )

Chapters.create!(name:"Episode 08" ,number:8 ,pages:53 ,tomes_id:overlord3.id )
Chapters.create!(name:"Episode 09" ,number:9 ,pages:42 ,tomes_id:overlord3.id )
Chapters.create!(name:"Episode 10" ,number:10 ,pages:36 ,tomes_id:overlord3.id )

Chapters.create!(name:"Episode 11" ,number:11 ,pages:62 ,tomes_id:overlord4.id )
Chapters.create!(name:"Episode 12" ,number:12 ,pages:38 ,tomes_id:overlord4.id )
Chapters.create!(name:"Episode 13" ,number:13 ,pages:52 ,tomes_id:overlord4.id )
