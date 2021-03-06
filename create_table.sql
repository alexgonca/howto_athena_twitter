CREATE EXTERNAL TABLE IF NOT EXISTS twitter_stream (
    timestamp_ms bigint,
    created_at timestamp,
    id bigint,
    id_str string,
    text string,
    source string,
    truncated boolean,
    in_reply_to_status_id bigint,
    in_reply_to_status_id_str string,
    in_reply_to_user_id bigint,
    in_reply_to_user_id_str string,
    in_reply_to_screen_name string,
    quoted_status_id bigint,
    quoted_status_id_str string,
    is_quote_status boolean,
    retweet_count int,
    favorite_count int,
    favorited boolean,
    retweeted boolean,
    possibly_sensitive boolean,
    filter_level string,
    lang string,
    user struct<
        id: bigint,
        id_str: string,
        name: string,
        screen_name: string,
        location: string,
        url: string,
        description: string,
        protected: boolean,
        verified: boolean,
        followers_count: int,
        friends_count: int,
        listed_count: int,
        favourites_count: int,
        statuses_count: int,
        created_at: timestamp,
        profile_banner_url: string,
        profile_image_url_https: string,
        default_profile: boolean,
        default_profile_image: boolean,
        withheld_in_countries: array<string>,
        withheld_scope: string
    >,
    coordinates struct<
        coordinates: array<float>,
        type: string
    >,
    place struct<
        id: string,
        url: string,
        place_type: string,
        name: string,
        full_name: string,
        country_code: string,
        country: string,
        bounding_box: struct<
            coordinates: array<array<array<float>>>,
            type: string
        >
    >,
    entities struct<
        hashtags: array<
            struct<
                indices: array<smallint>,
                text: string
            >
        >,
        urls: array<
            struct<
                display_url: string,
                expanded_url: string,
                indices: array<smallint>,
                url: string
            >
        >,
        user_mentions: array<
            struct<
                id: bigint,
                id_str: string,
                indices: array<smallint>,
                name: string,
                screen_name: string
            >
        >,
        symbols: array<
            struct<
                indices: array<smallint>,
                text: string
            >
        >,
        media: array<
            struct<
                display_url: string,
                expanded_url: string,
                id: bigint,
                id_str: string,
                indices: array<smallint>,
                media_url: string,
                media_url_https: string,
                source_status_id: bigint,
                source_status_id_str: string,
                type: string,
                url: string
            >
        >
    >,
    quoted_status struct<
        created_at: timestamp,
        id: bigint,
        id_str: string,
        text: string,
        source: string,
        truncated: boolean,
        in_reply_to_status_id: bigint,
        in_reply_to_status_id_str: string,
        in_reply_to_user_id: bigint,
        in_reply_to_user_id_str: string,
        in_reply_to_screen_name: string,
        quoted_status_id: bigint,
        quoted_status_id_str: string,
        is_quote_status: boolean,
        retweet_count: int,
        favorite_count: int,
        favorited: boolean,
        retweeted: boolean,
        possibly_sensitive: boolean,
        filter_level: string,
        lang: string,
        user: struct<
            id: bigint,
            id_str: string,
            name: string,
            screen_name: string,
            location: string,
            url: string,
            description: string,
            protected: boolean,
            verified: boolean,
            followers_count: int,
            friends_count: int,
            listed_count: int,
            favourites_count: int,
            statuses_count: int,
            created_at: timestamp,
            profile_banner_url: string,
            profile_image_url_https: string,
            default_profile: boolean,
            default_profile_image: boolean,
            withheld_in_countries: array<string>,
            withheld_scope: string
        >,
        coordinates: struct<
            coordinates: array<float>,
            type: string
        >,
        place: struct<
            id: string,
            url: string,
            place_type: string,
            name: string,
            full_name: string,
            country_code: string,
            country: string,
            bounding_box: struct<
                coordinates: array<array<array<float>>>,
                type: string
            >
        >,
        entities: struct<
            hashtags: array<
                struct<
                    indices: array<smallint>,
                    text: string
                >
            >,
            urls: array<
                struct<
                    display_url: string,
                    expanded_url: string,
                    indices: array<smallint>,
                    url: string
                >
            >,
            user_mentions: array<
                struct<
                    id: bigint,
                    id_str: string,
                    indices: array<smallint>,
                    name: string,
                    screen_name: string
                >
            >,
            symbols: array<
                struct<
                    indices: array<smallint>,
                    text: string
                >
            >,
            media: array<
                struct<
                    display_url: string,
                    expanded_url: string,
                    id: bigint,
                    id_str: string,
                    indices: array<smallint>,
                    media_url: string,
                    media_url_https: string,
                    source_status_id: bigint,
                    source_status_id_str: string,
                    type: string,
                    url: string
                >
            >
        >
    >,
    retweeted_status struct<
        created_at: timestamp,
        id: bigint,
        id_str: string,
        text: string,
        source: string,
        truncated: boolean,
        in_reply_to_status_id: bigint,
        in_reply_to_status_id_str: string,
        in_reply_to_user_id: bigint,
        in_reply_to_user_id_str: string,
        in_reply_to_screen_name: string,
        quoted_status_id: bigint,
        quoted_status_id_str: string,
        is_quote_status: boolean,
        retweet_count: int,
        favorite_count: int,
        favorited: boolean,
        retweeted: boolean,
        possibly_sensitive: boolean,
        filter_level: string,
        lang: string,
        user: struct<
            id: bigint,
            id_str: string,
            name: string,
            screen_name: string,
            location: string,
            url: string,
            description: string,
            protected: boolean,
            verified: boolean,
            followers_count: int,
            friends_count: int,
            listed_count: int,
            favourites_count: int,
            statuses_count: int,
            created_at: timestamp,
            profile_banner_url: string,
            profile_image_url_https: string,
            default_profile: boolean,
            default_profile_image: boolean,
            withheld_in_countries: array<string>,
            withheld_scope: string
        >,
        coordinates: struct<
            coordinates: array<float>,
            type: string
        >,
        place: struct<
            id: string,
            url: string,
            place_type: string,
            name: string,
            full_name: string,
            country_code: string,
            country: string,
            bounding_box: struct<
                coordinates: array<array<array<float>>>,
                type: string
            >
        >,
        entities: struct<
            hashtags: array<
                struct<
                    indices: array<smallint>,
                    text: string
                >
            >,
            urls: array<
                struct<
                    display_url: string,
                    expanded_url: string,
                    indices: array<smallint>,
                    url: string
                >
            >,
            user_mentions: array<
                struct<
                    id: bigint,
                    id_str: string,
                    indices: array<smallint>,
                    name: string,
                    screen_name: string
                >
            >,
            symbols: array<
                struct<
                    indices: array<smallint>,
                    text: string
                >
            >,
            media: array<
                struct<
                    display_url: string,
                    expanded_url: string,
                    id: bigint,
                    id_str: string,
                    indices: array<smallint>,
                    media_url: string,
                    media_url_https: string,
                    source_status_id: bigint,
                    source_status_id_str: string,
                    type: string,
                    url: string
                >
            >
        >
    >
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
WITH SERDEPROPERTIES (
  'serialization.format' = '1',
  'ignore.malformed.json' = 'true'
) LOCATION 's3://your-s3-bucket/your-new-folder/'
TBLPROPERTIES ('has_encrypted_data'='false');
