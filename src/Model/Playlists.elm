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
            """
            valle
            """
    in
    { thatNewJazz = Playlist False thatNewJazz
    , tender = Playlist False tender
    , valle = Playlist False []
    }
