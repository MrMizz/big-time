module Model.Playlists exposing (Playlist, Playlists, Update, init)


type alias Playlists =
    { thatNewJazz : Playlist
    , tender : Playlist
    , valle : Playlist
    }


type alias Playlist =
    { descriptionIsOpen : Bool
    , description : List String
    }


type alias Update =
    Playlists -> Playlist -> Playlists


init : Playlists
init =
    let
        thatNewJazz =
            let
                one =
                    """
                    THAT NEW JAZZ
                    """

                two =
                    """
                    This is really a tribute to the UK Jazz Scene.
                    """

                three =
                    """
                    We start off with Tenderlonious. Label head & founder of 22a.
                    You can't put this guy in a box. He's got some of the best Synth sounds in the industry right now,
                    with his self-titled releases. You'll also find "tender" producing & band leading some really unique &
                    tasty jazz sounds with his band Ruby Rashton, that we highlight here. Lots of brass & wind sounds.
                    Great bass playing. Great drums. All of which is latent in his more electronic releases.
                    """

                four =
                    """
                    We've got Yussef Kamaal, brain child of Yussef Dayes & Kamaal Williams (aka Henry Wu).
                    Talk about not being able to put this guy in a box; good luck with KW. Really tho, this album (Black Focus)
                    made a lot of noise in the "jazz world". Released by Giles Peterson with his Brownswood Recordings.
                    Although you can argue they took a lot of influence from Tenderlonious.
                    They were all working together for years in the underground UK scene
                    (specifically with Rhythm Section) before this 2017 release.
                    """

                five =
                    """
                    It's worth mentioning that Yussef Dayes was drumming for Tenderlonious during the early Ruby Rashton days
                    (as well on The Shakedown a la SV Interlude) AS WELL as with KW on that seminal Black Focus record.
                    Today, he's widely regarded as the best (or most powerful & unique) drummer on the planet.
                    """

                six =
                    """
                    We take a brief stop for Alfa Mist.
                    I've seen artists in the UK scene refer to this guy as Mr Chords on the keys.
                    He's released several fantastic albums dating back to 2015.
                    My favorite is probably still the 2017 release, Antiphon. The music is uplifting as well as introspective.
                    """

                seven =
                    """
                    Mansur Brown. Some say the most prolific guitarist since Hendrix.
                    I really enjoy his self-produced debut album, Shiroi. He incorporates really interesting & modern
                    (most likely digital) drum sounds, that he absolutely shreds over. Tasty bass licks, too.
                    Shiroi was released by Black Focus Records (label head Kamaal Williams).
                    """

                eight =
                    """
                    We finish with Joe Armon-Jones. Another great artist on Keyboards & Piano. Beautiful chords.
                    The drumming on this 2018 release definitely take influences from hip-hop.
                    The uplifting vocals are stand out. Another great album from Brownswood.
                    Shout out Giles Peterson.
                    """
            in
            [ one
            , two
            , three
            , four
            , five
            , six
            , seven
            , eight
            ]

        tender =
            let
                one =
                    """
                    Tribute to Ed Cawthorne (aka Tenderlonious)
                    """

                two =
                    """
                    There's really a ton to say about this guy.
                    & we've already covered him briefly in our "THAT NEW JAZZ S***" bit.
                    """

                three =
                    """
                    Tenderlonious is a really important figure in the modern artistic world. Really.
                    Why? How? Ed Cawthorne owns all his music. He is his own "label head".
                    He's "independent" in industry terms. & it's intentional.
                    It's not like he's waiting for some record label to swoop him up. Quite the opposite.
                    """

                four =
                    """
                    No. Tenderlonious is out here, doing it his way. & I think he's figured it out.
                    The strategy looks a lot like the following.
                    """

                five =
                    """
                    Release often.
                    Tender seems to be releasing every other month.
                    & it's usually an EP, not a single like the rest of the industry.
                    Most artists today are afraid to publish work, sitting on an entire archives.
                    It seems that Tenderlonious is releasing most of what he produces, and more importantly, sells it.
                    """

                six =
                    """
                    Release exclusively.
                    All of the releases are pressed on Vinyl. Releases are typically exclusive (limited number of physical copies).
                    I've even seen this guy release ONLY physical copies. No digital. This type of behavior drives demand.
                    """

                seven =
                    """
                    This model typically does not build a commercial fan base.
                    But it builds a loyal community of patrons that anticipate & purchase your work.
                    Which enables more work. More work that is uncompromising. More work that actually means something.
                    """

                eight =
                    """
                    That's exactly what Tenderlonious' music is. Uncompromising. It's meaningful. & it's funky.
                    """
            in
            [ one
            , two
            , three
            , four
            , five
            , six
            , seven
            , eight
            ]

        valle =
            let
                one =
                    """
                    Tribute to Marcos Valle
                    """

                two =
                    """
                    1963. Marcos with a Bossa Nova release, per the times.
                    You can hear that Marcos is clearly emulating the likes of Antonio Carlos Jobim.
                    This record certainly hits the mark that he must have been striving for & it puts him on the map.
                    """

                three =
                    """
                    1972. Nearly 10 years later. Marcos is jamming with Azymuth, legendary Brazilian funk/acid band.
                    The grooves are still very much Bossa Nova, but they take a new flavor with the introduction of synthesizers.
                    A personal favorite record of mine.
                    """

                four =
                    """
                    1981. Nearly 10 years later, again. There's a reason for these hiatuses with Marcos.
                    Brasil was not an easy place to be. Military Dictatorship. Government censorship.
                    Anyways, Marcos is in the USA & working with Leon Ware (producer of Marvin Gaye).
                    They release (at least) two albums together.
                    One under Marcos' name, another (more traditionally American) under Leon's name.
                    This record has got American funk & jazz influences all over it,
                    as most evident in the drums that are no longer Samba.
                    """

                five =
                    """
                    1983. Self titled album. Infamous album cover. The single Estrelar blows up.
                    People are still listening to that track. As far as Marcos Valle records go,
                    this is probably my least favorite. There's 2 or 3 good tracks.
                    Included on this record is a rendition of Samba de Verao, the bossa nova standard written
                    by Marcos & his brother. He performs this track in 1983, this time with a funky spin.
                    """

                six =
                    """
                    1986. Yet another ridiculous album cover.
                    Marcos does Samba de Verao again. This time with deep 80s chords & drum machines.
                    I much prefer this album to the 1983 release.
                    """

                seven =
                    """
                    2001. 15 years later. Marcos finally produces a sensible album cover.
                    This record, titled "Escape", is released by Far Out Recordings.
                    A group from the UK who at this time began producing/signing exclusively artists from Brasil.
                    Far Out also really likes electronic & dance music.
                    Pair that with an artist like Marcos Valle,
                    who has already ventured from the constraints of Samba & Bossa. Oh man.
                    """

                eight =
                    """
                    2004. Contrasts. Another release with Far Out.
                    At this point Marcos Valle has solidified himself as one of the most dynamic musicians of all time.
                    Between 1963 and 2004. He's still producing incredible samba grooves, yet it's fresh and interesting.
                    Might be my favorite Valle album, ever.
                    """

                nine =
                    """
                    2010. Estatica. Another release with Far Out. Fantastic record.
                    """

                ten =
                    """
                    2019. Nearly 10 years later. Again. This time the record is titled "Sempre". Released by Far Out.
                    This was the best record of 2019. I'm serious. & it came from an artist who debuted in 1963.
                    Explain me that.
                    """

                eleven =
                    """
                    I'm not aware of another artist who has had this sort of longevity.
                    Artists like Miles Davis come to mind.
                    """

                twelve =
                    """
                    I'm still waiting for the next Valle record. I hope it's with Far Out.
                    Until then, we can listen back to 60+ years of greatness.
                    """
            in
            [ one
            , two
            , three
            , four
            , five
            , six
            , seven
            , eight
            , nine
            , ten
            , eleven
            , twelve
            ]
    in
    { thatNewJazz = Playlist False thatNewJazz
    , tender = Playlist False tender
    , valle = Playlist False valle
    }
