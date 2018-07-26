DROP TABLE IF EXISTS PostComments;
DROP TABLE IF EXISTS GameReviewPosts;
DROP TABLE IF EXISTS GameArtwork;
DROP TABLE IF EXISTS GameScreenShots;
DROP TABLE IF EXISTS GameInfoFromIGDB;

CREATE TABLE IF NOT EXISTS GameInfoFromIGDB (
    id SERIAL PRIMARY KEY,
    igdb_id INTEGER,
    game_name TEXT,
    summary TEXT,
    release_date TEXT,
    igdb_rating DECIMAL,
    cover_img_url TEXT
);

INSERT INTO GameInfoFromIGDB
(igdb_id, game_name, summary, release_date, igdb_rating, cover_img_url)
VALUES
--1
(5165, 'Sonic & Sega All-Stars Racing', 'SONIC AND SEGA ALL-STARS RACE FOR VICTORY IN A HIGH SPEED HIGH SKILL RACETRACK SHOWDOWN! TAKE TO THE TRACK BY CAR, MONSTER TRUCK, BIKE AND EVEN AEROPLANE IN SONIC & SEGA ALL-STARS RACING. Explore stunning new circuits including Sonic Seaside Hill, Curien Mansion and Blizzard Castle as you zip around medieval castle ramparts, hurtle under lush rain forest canopies and tear through bustling city scapes in a frantic race to the finish line. Jostle against a selection of 20 challengers including Super Monkey Ball’s Ai Ai, Amigo from Samba and the evil Dr. Eggman in your unique character vehicle. Stay ahead of the pack by dodging traps and launching outrageous character moves such as the invincible Super Sonic, Banana Blitz assault of monkey balls or Tails wild Tornado - set to throw any vehicle clean in the air! But if you’ve been battered, beaten and broken, it’s not over yet! Super-charge your vehicle with power-ups to get back in the race and be sure to stay alert for the secret short-cuts that will give you the edge to victory. Party Racing Fun - Battle it out in single player, challenge your friends in 4 player split-screen for the ultimate track racing showdown! All Your Favorite Racers - Choose from 20 different characters from the Sonic & SEGA universe including Sonic, Tails, Aiai and Amigo. High Velocity Vehicles - Every character drives their own unique vehicle including sports cars, bikes, planes and even a giant banana to perform bespoke special man-oeuvres! All-Star Moves - Need to get by a competitor? Can’t overtake a racer? Then take them out with a pick-up weapon (missiles, mines and other obstacles) or one of the 20 unique character moves that allows the recipient to know who just hit them! Stunning Visuals - Race over medieval castle ramparts, under lush rain forest canopies and through bustling city scapes as you battle through 27 challenging tracks from the Sonic and SEGA Universe.',
'2010-Feb-23', 77.41753227002161, 'images.igdb.com/igdb/image/upload/t_thumb/shsjhpgfjqydrla8gc36.jpg'),
--2
(2174, 'Sonic & All-Stars Racing Transformed', 'Compete across land, water and air in incredible transforming vehicles that change from cars to boats to planes mid-race.',
'2012-Nov-16', 81.38622000767411, 'images.igdb.com/igdb/image/upload/t_thumb/q9gxdv4ymbthwyrkxood.jpg'),
--3
(9476, 'Sonic 3D Blast', 'Sonic 3D Blast is a 1996 platform video game developed by Traveller`s Tales and Sonic Team, and published by Sega for the Genesis, Saturn, and Windows. Part of the Sonic the Hedgehog series, the game abandons previous Sonic games` side-scrolling style in favor of isometric gameplay, making use of some pre-rendered 3D models converted into sprites. The game features creatures known as Flickies, which first appeared in the 1984 arcade game Flicky. Controlling only Sonic himself, the player`s goal is to collect Flickies and carry them to safety, periodically sparring with the series antagonist Dr. Robotnik, who is imprisoning them within robots.',
'1996-Nov-12', 60.6177633129079, 'images.igdb.com/igdb/image/upload/t_thumb/s6pwwkdqm5dzfzeqj0zt.jpg'),
--4
(50924, 'Sonic & Knuckles Collection', 'A collection including: Sonic the Hedgehog 3 Sonic & Knuckles Sonic 3 & Knuckles Blue Sphere',
'1997-Apr-20', NULL, NULL),
--5
(7862, 'Sonic Adventure 2: Battle', 'Sonic and company are back and better than ever in Sonic Adventure 2: Battle for Nintendo GameCube. Dr. Eggman is up to his old tricks, and it`s up to Sonic, Tails, and Knuckles to stop him yet again. Sonic Adventure 2: Battle features faster action, all-new two-player games, and a branching storyline that lets you choose to save the world as the Hero side, or conquer it as the Dark side. Two new playable characters enter the Sonic universe -- a mysterious dark hedgehog called Shadow, and a jewel-thieving bat named Rouge. In the single-player mode, you`ll go through more than 30 unique stages, which include everything from a forgotten pyramid, an abandoned military base, and a giant space station. Then there`s the expanded two-player mode, which features 12 playable characters competing in new head-to-head games. All of this adds up to Sonic`s biggest adventure yet!',
'2001-Dec-20', 72.4330159778885, 'images.igdb.com/igdb/image/upload/t_thumb/mfhtpiwf6a9dsbuhhhfe.jpg'),
--6
(125, 'Diablo', 'An isometric strategy RPG that takes place in and below the town of Tristram. Gothic fantasy weapons and spells are used to defeat hordes of monsters from hell through randomized dungeon levels, continuously gaining experience points, gold, and a variety of equipment to bolster the hero`s monster-killing potency along the way.',
'1996-Dec-31', 82.93847999047101, 'images.igdb.com/igdb/image/upload/t_thumb/yvtueb4jdyww4t26b0yt.jpg'),
--7
(126, 'Diablo II', 'A top down adventure game of epic proportion. Diablo 2 is the continuation of a wonderful world of magic and horror. - - "There is no escape from chaos, there is only the sweet release of death"',
'2000-Jun-29', 87.32279194073159, 'images.igdb.com/igdb/image/upload/t_thumb/rdxf2fdxiutxiw0dumto.jpg'),
--8
(120, 'Diablo III', 'The game takes place in Sanctuary, the dark fantasy world of the Diablo series, twenty years after the events of Diablo II. Deckard Cain and his niece Leah are in the Tristram Cathedral investigating ancient texts regarding an ominous prophecy. Suddenly, a mysterious star falling from the sky strikes the Cathedral, creating a deep crater into which Deckard Cain disappears.',
'2012-May-15', 79.9577719093785, 'images.igdb.com/igdb/image/upload/t_thumb/hohtqw21z8ucbsylj7i1.jpg'),
--9
(673, 'Doom', 'A sci-fi FPS in which a space mercenary searches for his lost friend from the box art. Things aren`t looking too good. You`ll never navigate off the planet on your own. Plus, all the heavy weapons have been taken by the assault team leaving you with only a pistol. If you only could get your hands around a plasma rifle or even a shotgun you could take a few down on your way out. Whatever killed your buddies deserves a couple of pellets in the forehead. Securing your helmet, you exit the landing pod. Hopefully you can find more substantial firepower somewhere within the station. As you walk through the main entrance of the base, you hear animal-like growls echoing through the distant corridors. They know you`re here. There`s no turning back now.',
'1993-Dec-10', 86.0573661035491, 'images.igdb.com/igdb/image/upload/t_thumb/napawx0fxrjpfd7jvpft.jpg'),
--10
(1070, 'Super Mario World', 'Super Mario World (known in Japan as Super Mario World: Super Mario Bros. 4) is a side-scrolling platformer developed by Nintendo EAD and published by Nintendo for the Super Nintendo Entertainment System on November 21, 1990 (in Japan), August 31, 1991 (in North America), and April 11, 1992 (in Europe). One of the launch titles of the SNES (and bundled with early systems in North America), Super Mario World is the fifth main game in the Super Mario series. (starring Nintendo`s mascot, Mario, and his brother, Luigi). The game follows both Mario brothers as they explore Dinosaur Land (known for its large amount of dinosaurs) to find and defeat the evil Koopa king Bowser (and his seven underlings, the Koopalings) while rescuing Princess Toadstool. Along with new abilities (such as the "Spin Jump"), a new power-up (the "Cape Feather") and more obstacles, the game introduces dinosaur companions (known as Yoshi) that Mario and Luigi can ride. Yoshi, known for using their long tongues to snare and eat enemies, have become a fan-favorite among the series (giving them their own games and spin-offs, most notably this game`s prequel). Special bundles of the SNES in 1994 included a compilation cartridge mixing Super Mario World with Super Mario All-Stars. The only difference in this version is a new sprite set for Luigi. The original game was later ported to the Game Boy Advance on February 11, 2002 as Super Mario World: Super Mario Advance 2. Along with a special version of the original Mario Bros., the port includes a variety of differences, including Luigi as a selectable character (who now has unique features, such as his floating jump from Super Mario Bros. 2), new voice acting, and the ability to save anywhere. The original game was also digitally re-released in Nintendo`s Virtual Console platform for the Wii (on February 5, 2007) and Wii U (on April 26, 2013).',
'1990-Nov-21', 95.86763144165616, 'images.igdb.com/igdb/image/upload/t_thumb/rbdpnsh7jkx4cvejygkc.jpg'),
--11
(122, 'Left 4 Dead', 'From Valve (the creators of Counter-Strike, Half-Life and more) comes Left 4 Dead, a co-op action horror game for the PC and Xbox 360 that casts up to four players in an epic struggle for survival against swarming zombie hordes and terrifying mutant monsters. Set in the immediate aftermath of the zombie apocalypse, L4D`s survival co-op mode lets you blast a path through the infected in four unique “movies,” guiding your survivors across the rooftops of an abandoned metropolis, through rural ghost towns and pitch-black forests in your quest to escape a devastated Ground Zero crawling with infected enemies. Each "movie" is comprised of five large maps, and can be played by one to four human players, with an emphasis on team-based strategy and objectives. New technology dubbed "the AI Director" is used to generate a unique gameplay experience every time you play. The Director tailors the frequency and ferocity of the zombie attacks to your performance, putting you in the middle of a fast-paced, but not overwhelming, Hollywood horror movie. Addictive single player, co-op, and multiplayer action gameplay from the makers of Counter-Strike and Half-Life Versus Mode lets you compete four-on-four with friends, playing as a human trying to get rescued, or as a zombie boss monster that will stop at nothing to destroy them.',
'2008-Nov-18', 81.0799007306355, 'images.igdb.com/igdb/image/upload/t_thumb/ffdj7i1tl2jvh42lmeis.jpg'),
--12
(124, 'Left 4 Dead 2', 'Left 4 Dead 2 is a cooperative first-person shooter video game, the sequel to Valve Corporation`s Left 4 Dead. The Game builds upon cooperatively focused gameplay and Valve`s proprietary Source engine, the same game engine used in the original Left 4 Dead. Set during the aftermath of an apocalyptic pandemic, Left 4 Dead 2 focuses on four new Survivors, fighting against hordes of the Infected, who develop severe psychosis and exhibit zombie-like tendencies. The Survivors must fight their way through five campaigns, interspersed with safe houses that act as checkpoints, with the goal of escape at each campaign`s finale.',
'2009-Nov-17', 82.2662583074474, 'images.igdb.com/igdb/image/upload/t_thumb/eckumjvspgvgsap4wmp2.jpg')
;

CREATE TABLE IF NOT EXISTS GameScreenShots (
    screenshot_id SERIAL PRIMARY KEY,
    gameInfo_id INTEGER REFERENCES GameInfoFromIGDB(id) ON DELETE CASCADE,
    image_url TEXT
);

INSERT INTO GameScreenShots
(gameInfo_id, image_url)
VALUES
(1, 'images.igdb.com/igdb/image/upload/t_thumb/p9fp9e6tpiyhyofjei86.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/xg9ab9cyzixxdxmybpfu.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/pemmz6bfl32vdnmwcc4h.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/g2evqm8ktgwksqomb48a.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/xsdiesrs50x8rzvpwpot.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/bi80jfln1uwhhlbcrhlg.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/xg07ptatovwbyaevhrpj.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/yoqv9mxnvb2ka0caulpp.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/lv9crsl3kjyp92lpeuxd.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/rbz0jxeiaaicmew0rzny.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/johtiv5xlwgj0lh0yzsp.jpg'),
(1, 'images.igdb.com/igdb/image/upload/t_thumb/vpl5htaiyfvkyzi6sw8h.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/cakotyih3xnr5gbreerb.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/mo7uuzxmpljutg84qemk.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/xleia23nnzldoilxshkq.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/wusuqnrtylwqxncoajfj.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/shccxv8rx8xc2umuzgra.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/omep16abuwtnrunaq4p1.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/yq33rgstkuocyfldca3c.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/rt2qf6hu8zhl0zfii0pm.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/oytu2adxtlvfuxjyg7at.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/vgbaui9tclk94admcdu3.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/bsjk1hvkt8nblze9xup8.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/nf3hzvx8x9z3voglgiaq.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/rnjctscj9gfmmqvufg2b.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/odufoy1enr5iu8p4bybw.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/igaxqvcsqgzqbrdkqgfn.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/jtanqranlbzjg9slawks.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/biybtdc5jbbe6wsfwyhs.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/bmvp1jhnjjgep1uuarct.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/bjv94xcotusawmwotayn.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/z1dd2yi72rq9rr9etmkm.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/fhjc8hfviyjhuhbgtny2.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/vntc4ruz0j4t3avv01hw.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/om8znwjx1fb2ssfhsr0y.jpg'),
(3, 'images.igdb.com/igdb/image/upload/t_thumb/p2jtsfq0apibpzv1o9mp.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/eq2uaonbbjuybuj0ifko.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/l2s04xrfqobysn6ek20g.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/wkwhske5ojuc3aeheis8.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/fhrrrdek51wncoavii6f.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/tezido7fq50udg43ny96.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/b8ig7vktclc7xfd6qtvp.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/flq6pqwryznldygvwxch.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/kofjbgzkulkcinasffgr.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/puso6pyivbov8wijxm2z.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/tnv2vepfm50chpwmvzl5.jpg'),
(5, 'images.igdb.com/igdb/image/upload/t_thumb/p3j2r33l0svflp8392xs.jpg'),
(6, 'images.igdb.com/igdb/image/upload/t_thumb/qmksep74fnnnbq6tppig.jpg'),
(6, 'images.igdb.com/igdb/image/upload/t_thumb/tckn5cydm0w2cf8tjv2l.jpg'),
(6, 'images.igdb.com/igdb/image/upload/t_thumb/e7jcsiwijzxdt1sqzbvb.jpg'),
(7, 'images.igdb.com/igdb/image/upload/t_thumb/qwh6mbsbny87hpn9wjj5.jpg'),
(7, 'images.igdb.com/igdb/image/upload/t_thumb/dlyscpjqglhvcohvwoy5.jpg'),
(7, 'images.igdb.com/igdb/image/upload/t_thumb/mn5gsvv5sroptrkw1cwm.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/auqwklwf1olq6obxzw89.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/dg58xb7dullhcvrlenxm.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/sq4xtjnigqionni9pdet.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/rj1rbspgpom5xt7tgsej.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/c7e3ld6bqctsg82n5wvh.jpg'),
(9, 'images.igdb.com/igdb/image/upload/t_thumb/dwsqh3ov6lvhlop9nphz.jpg'),
(9, 'images.igdb.com/igdb/image/upload/t_thumb/fcws2bjqx7rc4bigobty.jpg'),
(9, 'images.igdb.com/igdb/image/upload/t_thumb/dd82q9yh3vh10oqmvun4.jpg'),
(9, 'images.igdb.com/igdb/image/upload/t_thumb/uolg5ypiubgnc1rtqmjx.jpg'),
(9, 'images.igdb.com/igdb/image/upload/t_thumb/vv0zszxgvk4dklsz53ap.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/j58abebg08zrh6vjdvkk.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/nwdmxtvfj7tro1iqwgbn.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/oxfxrwtxbswrrqf4dc9x.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/xqpfrjf6tclfjmr4gkhi.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/pnqm1e1nczs9zkyukd5b.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/gfngetbkukbrjztd5u1b.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/lzyxgb64aw2a28ufdkhj.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/swouq6zc6c5jjq6exjcx.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/pdkvjmhh5urjnrwng5cg.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/bbkmycy8wacpka1hroy5.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/i9sgtqwdmmdjzox51rgu.jpg'),
(10, 'images.igdb.com/igdb/image/upload/t_thumb/xqj7kfjsgqrboda05dnp.jpg'),
(11, 'images.igdb.com/igdb/image/upload/t_thumb/mvkhksdvkmzmo60qisgl.jpg'),
(11, 'images.igdb.com/igdb/image/upload/t_thumb/oj75zc9alspxwr5iqprx.jpg'),
(11, 'images.igdb.com/igdb/image/upload/t_thumb/istpnyiuhechvn6pudxt.jpg'),
(11, 'images.igdb.com/igdb/image/upload/t_thumb/kxtwfucepzzvsttjpjhx.jpg'),
(11, 'images.igdb.com/igdb/image/upload/t_thumb/wfrdkbuug9ecodbbn62d.jpg'),
(12, 'images.igdb.com/igdb/image/upload/t_thumb/wdrlle5g5f7owsbevaix.jpg'),
(12, 'images.igdb.com/igdb/image/upload/t_thumb/ushaltkbqtcooswfckwh.jpg'),
(12, 'images.igdb.com/igdb/image/upload/t_thumb/scrnjjf7pyzrvktfifzg.jpg'),
(12, 'images.igdb.com/igdb/image/upload/t_thumb/rj3csep68w7cjwv5129q.jpg'),
(12, 'images.igdb.com/igdb/image/upload/t_thumb/bmnylmpuwm3rlzmed90q.jpg')
;

CREATE TABLE IF NOT EXISTS GameArtwork (
    artwork_id SERIAL PRIMARY KEY,
    gameInfo_id INTEGER REFERENCES GameInfoFromIGDB(id) ON DELETE CASCADE,
    image_url TEXT
);

INSERT INTO GameArtwork
(gameInfo_id, image_url)
VALUES
(1, 'images.igdb.com/igdb/image/upload/t_thumb/n689oie9dcnjislczdap.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/izlggps7fz9djhbmqyjp.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/yzanwewf1l9g143omjcz.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/anvzlmn99uww80ha1gqz.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/ejehebd9dfkarjx0c5gd.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/bozhfzgpvp9fcjbcdmtm.jpg'),
(2, 'images.igdb.com/igdb/image/upload/t_thumb/j679caufkftsns3n26df.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/rglwmqmsjryyyudbsvo9.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/wfhsqzn7mdoifimtdasi.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/c6wh9x1t7wdublidmuus.jpg'),
(8, 'images.igdb.com/igdb/image/upload/t_thumb/o6h2lxza8pmnpizm4qv8.jpg')
;

CREATE TABLE IF NOT EXISTS GameReviewPosts (
    post_id SERIAL PRIMARY KEY,
    GameInfo_id INTEGER REFERENCES GameInfoFromIGDB(id) ON DELETE CASCADE,
    username TEXT,
    user_img_url TEXT,
    user_rating INTEGER,
    user_review TEXT,
    recommendation TEXT
);

INSERT INTO GameReviewPosts
(GameInfo_id, username, user_img_url, user_rating, user_review, recommendation)
VALUES
(1, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 4, 'This game is your standard racing game with some cartoon violence. Nothing that I would say is innappropriate just a standard racing game like I said.', 'Playable for all ages. Your classic racing game.'),
(1, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 3, 'I like to have my children play in space the final frontier personally. This game is not in space, but it is clean for children. It won`t give them harm.', 'Not a space game, but appropriate for kids I suppose.'),
(1, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 5, 'It is the best game ever!!! I love racing games and kids love racing games! What more would you want for your chid???', 'Let your kids play it! It`s clean and fun!'),
(1, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 4, 'I love Mario Kart and this is a good game. It`s clean and it should be fine for your kids to play with you. I`d rather see it have Mario and the special power shells I am used to, but it is still a fun game for the whole family to enjoy.', 'Its racing, but not Mario, so it`s almost perfect. Give it a try.'),
(1, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, 'Anything Sonic is fairly clean. Unlike Shadow the Hedgehog, this game has no language problems, just the cartoon violence you are used to in a Sonic game. Give it a try. You`ll like it especially if you like Sonic and Sonic is made for kids in mind first.', 'Totally worth playing many hours.'),
(1, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, 'The Lord of Terror would like to see more gore personally, but for kids, this is suitable for babies. You can play this and won`t wet your pants.', 'It`s fine for kids.'),

(2, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 3, 'The sequel to the racing game that is not about racing space. The cars are now floating so they are closer to spaceships somewhat, but they are not the USS enterprise.', 'Not a space game, but appropriate for kids.'),
(2, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 4, 'Like the first game, it is a racing game like Mario Kart. It is clean for kids and has new gimmicks to the overall way to play the game. Give it a go, you will probably enjoy it with kids.', 'Great for all ages'),
(2, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, 'I seriously do not know why I spend time playing games without the dark lord in them. They bore me, but since I am helping with these ratings as a personal debt I need to pay back for my soul to give to the dark lord, I must continue.', 'It`s fine for kids. Anything with the dark lord is more fun than this though.'),
(2, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, 'By far a great upgrade from the first game. More features, more racing, more fun for kids and adults. Like Sonic? Play it, won`t regret it.', 'Great for everyone. Try it.'),
(2, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 5, 'Seems like a fun game for kids. My boys will enjoy it at least, it`s clean and friendly.', 'Good for kids. Recommended.'),
(2, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 5, 'PLAY PLAY PLAY! BUY BUY BUY! NOW NOW NOW! Great game and will be best time for kids!', 'GET IT!'),

(3, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, 'Great game. Not as good as 2D Sonic, but still fun and is fine for kids.', 'Fine for kids and fun. Play it.'),
(3, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 2, 'Not Mario, but ok for kids. Personally didn`t like it as much, but kids could still play it and have fun.', 'Fine for kids. They could play it.'),
(3, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 4, 'Still faster gameplay than Mario, but not a recing title. Good for kids.', 'Good for any ages.'),
(3, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, 'The dark lord would by far cremate this spiny creature and enjoy it.', 'Clean for kids. Needs more fire and brimstone.'),
(3, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 3, 'These games are fine children I suppose. There is no educational value of showing space the final frontier though.', 'Fine, but could use the element of space.'),
(3, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 5, 'Fine game for kids. Clean, no violence and the hedgehog saves tiny creatures.', 'Good morals taught, go for it.'),

(4, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, 'Pinnacle of Sonic the Hedgehog combining to games and making a great best experience for any child and person ever.', 'Sonic at his finest. Must play.'),
(4, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, 'I seriously feel I would hurt that hedgehog if given the opportunity. At least there is fire in the game.', 'There`s fire, so it is already better than other games I`ve reviewed for this site.'),
(4, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 2, 'No, not Mario. Just no. Fine kids I suppose. Not my cup or tea though.', 'Try it if you want, kids wont die, but not Mario.'),
(4, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 4, 'I had so many game overs in this game, but seems fun for kids.', 'Fine for kids.'),
(4, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 3, 'Fast paced game. Not as fast as racing in a car though.', 'Good for kids.'),
(4, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 3, 'Seriously, I can imagine the hedgehog is on an away mission and then has to battle in space. Closer since there is a space battle at the end.', 'Better than I thought it would be since space was involved eventually.'),

(5, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, 'If you want to play a 3D Sonic game, this is a blast. You`ll love it and so will the kids.', 'Kids should at lesat try it.'),
(5, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 4, 'Lots of space violence. My kind of game. And clean for kids.', 'Definitely play it for the space part of the game.'),
(5, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 2, 'Not Mario, Not Mario, Not Mario.', 'Fine for kids.'),
(5, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, 'There was a part where Sonic almost died. It would have been better. Then he survived.', 'Kids wont be scarred for life.'),
(5, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 4, 'Hard game, but didn`t see antyhing that would make me worried for kids.', 'Kids should try it.'),
(5, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 4, 'Fast gameplay, not as fast without a car, but there is a kart race part so it makes it better plus a mini game for it. Try it. Kids should enjoy.', 'Fast paced and fast for kids.'),

(6, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 5, 'Finally! The gore, the violence! All kids should play this!', 'All should play!'),
(6, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 1, 'Fun as a game, definitely for kids though. Lots of violence, death and blood.', 'Wouldn`t recommend for kids.'),
(6, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 1, 'Slow, clunky, graphic, and not for kids.', 'No'),
(6, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 1, 'What did I just play, not for young kids. If older, some explanation will be needed if played by kids.', 'Find a racing game instead.'),
(6, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 1, 'I`m sure there is a market for this, but would not recommend for kids.', 'Adults only. Rated Mature for a reason.'),
(6, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 2, 'Teaches basic survival skills which is good for space, but I would not want my nephew to play this.', 'No, play in space, not in blood.'),

(7, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 5, 'YES!!! The Dark Lord in full form! All children will benefit from his terror and wisdom!', 'All need to hear his wisdom!'),
(7, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 1, 'No, keep kids away. Will give nightmares. Music, violence, everything.', 'Steer clear')
-- ,




-- Currently Inserting More HERE


-- (),
-- Templates for the Posts for more data.
-- (1, 'DiabloLordOfTerror', 'http://bloody-disgusting.com/wp-content/uploads/2018/01/diablo03.jpg', 3, '', ''),
-- (1, 'SuperSonicFanatic', 'https://vignette.wikia.nocookie.net/sonic/images/f/fc/Hyper_sonic.gif/revision/latest?cb=20160903061927', 5, '', ''),
-- (1, 'MarioKarter', 'https://mariokart8.nintendo.com/assets/img/top/char_mario.png', 4, '', ''),
-- (1, 'RaceTrackRaider', 'https://upload.wikimedia.org/wikipedia/en/thumb/2/25/Speed_Racer_promotional_image.jpg/220px-Speed_Racer_promotional_image.jpg', 5, '', ''),
-- (1, 'PicardParent95', 'https://imagesvc.timeincapp.com/v3/fan/image?url=https%3A%2F%2Fredshirtsalwaysdie.com%2Ffiles%2F2016%2F06%2FStar-Trek-Picard-MusicBrainz-Picard.jpg&w=850&h=560&c=sc', 3, '', ''),
-- (1, 'ParentWatcher31', 'https://st2.depositphotos.com/1007027/10184/i/950/depositphotos_101842076-stock-photo-father-and-son-kid-dad.jpg', 4, '', '')
;


CREATE TABLE IF NOT EXISTS PostComments (
    comments_id SERIAL PRIMARY KEY,
    username TEXT,
    user_img_url TEXT,
    post_comment TEXT,
    post_id INTEGER REFERENCES GameReviewPosts ON DELETE CASCADE
);

-- SELECT * FROM GameInfoFromIGDB;
-- SELECT * FROM GameScreenShots;
-- SELECT * FROM GameReviewPosts;
-- SELECT * FROM PostComments;