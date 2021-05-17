-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema InlineQueryResult
module TgBotAPI.Types.InlineQueryResult where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import  {-# SOURCE #-}  TgBotAPI.Types.InlineKeyboardMarkup (InlineKeyboardMarkup)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultArticle (InlineQueryResultArticle)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultAudio (InlineQueryResultAudio)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedAudio (InlineQueryResultCachedAudio)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedDocument (InlineQueryResultCachedDocument)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedGif (InlineQueryResultCachedGif)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedMpeg4Gif (InlineQueryResultCachedMpeg4Gif)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedPhoto (InlineQueryResultCachedPhoto)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedSticker (InlineQueryResultCachedSticker)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedVideo (InlineQueryResultCachedVideo)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultCachedVoice (InlineQueryResultCachedVoice)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultContact (InlineQueryResultContact)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultDocument (InlineQueryResultDocument)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultGame (InlineQueryResultGame)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultGif (InlineQueryResultGif)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultLocation (InlineQueryResultLocation)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultMpeg4Gif (InlineQueryResultMpeg4Gif)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultPhoto (InlineQueryResultPhoto)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultVenue (InlineQueryResultVenue)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultVideo (InlineQueryResultVideo)
import  {-# SOURCE #-}  TgBotAPI.Types.InlineQueryResultVoice (InlineQueryResultVoice)
import  {-# SOURCE #-}  TgBotAPI.Types.InputMessageContent (InputMessageContent)
import  {-# SOURCE #-}  TgBotAPI.Types.MessageEntity (MessageEntity)

-- | Defines the object schema located at @components.schemas.InlineQueryResult.anyOf@ in the specification.
-- 
-- This object represents one result of an inline query. Telegram clients currently support results of the following 20 types:
data InlineQueryResult = InlineQueryResult {
  -- | address: Address of the venue
  address :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | audio_duration: *Optional*. Audio duration in seconds
  , audioDuration :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | audio_file_id: A valid file identifier for the audio file
  , audioFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | audio_url: A valid URL for the audio file
  , audioUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption: *Optional*. Caption, 0-1024 characters after entities parsing
  , caption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , captionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | document_file_id: A valid file identifier for the file
  , documentFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | document_url: A valid URL for the file
  , documentUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | first_name: Contact\'s first name
  , firstName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_id: *Optional*. Foursquare identifier of the venue if known
  , foursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: *Optional*. Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , foursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | game_short_name: Short name of the game
  , gameShortName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_duration: *Optional*. Duration of the GIF
  , gifDuration :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | gif_file_id: A valid file identifier for the GIF file
  , gifFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_height: *Optional*. Height of the GIF
  , gifHeight :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | gif_url: A valid URL for the GIF file. File size must not exceed 1MB
  , gifUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | gif_width: *Optional*. Width of the GIF
  , gifWidth :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | google_place_id: *Optional*. Google Places identifier of the venue
  , googlePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: *Optional*. Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , googlePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | heading: *Optional*. For live locations, a direction in which the user is moving, in degrees. Must be between 1 and 360 if specified.
  , heading :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | hide_url: *Optional*. Pass *True*, if you don\'t want the URL to be shown in the message
  , hideUrl :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | horizontal_accuracy: *Optional*. The radius of uncertainty for the location, measured in meters; 0-1500
  , horizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | id: Unique identifier for this result, 1-64 bytes
  , id :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | last_name: *Optional*. Contact\'s last name
  , lastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | latitude: Location latitude in degrees
  , latitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | live_period: *Optional*. Period in seconds for which the location can be updated, should be between 60 and 86400.
  , livePeriod :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | longitude: Location longitude in degrees
  , longitude :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | mime_type: Mime type of the content of the file, either “application\/pdf” or “application\/zip”
  , mimeType :: (GHC.Maybe.Maybe MimeType)
  -- | mpeg4_duration: *Optional*. Video duration
  , mpeg4Duration :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | mpeg4_file_id: A valid file identifier for the MP4 file
  , mpeg4FileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mpeg4_height: *Optional*. Video height
  , mpeg4Height :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | mpeg4_url: A valid URL for the MP4 file. File size must not exceed 1MB
  , mpeg4Url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | mpeg4_width: *Optional*. Video width
  , mpeg4Width :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | parse_mode: *Optional*. Mode for parsing entities in the audio caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , parseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | performer: *Optional*. Performer
  , performer :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone_number: Contact\'s phone number
  , phoneNumber :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_file_id: A valid file identifier of the photo
  , photoFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_height: *Optional*. Height of the photo
  , photoHeight :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | photo_url: A valid URL of the photo. Photo must be in **jpeg** format. Photo size must not exceed 5MB
  , photoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_width: *Optional*. Width of the photo
  , photoWidth :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | proximity_alert_radius: *Optional*. For live locations, a maximum distance for proximity alerts about approaching another chat member, in meters. Must be between 1 and 100000 if specified.
  , proximityAlertRadius :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | sticker_file_id: A valid file identifier of the sticker
  , stickerFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_height: *Optional*. Thumbnail height
  , thumbHeight :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | thumb_mime_type: *Optional*. MIME type of the thumbnail, must be one of “image\/jpeg”, “image\/gif”, or “video\/mp4”. Defaults to “image\/jpeg”
  , thumbMimeType :: (GHC.Maybe.Maybe ThumbMimeType)
  -- | thumb_url: *Optional*. Url of the thumbnail for the result
  , thumbUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_width: *Optional*. Thumbnail width
  , thumbWidth :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | title: Title for the result
  , title :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of the result, must be *audio*
  , type' :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | url: *Optional*. URL of the result
  , url :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | vcard: *Optional*. Additional data about the contact in the form of a [vCard](https:\/\/en.wikipedia.org\/wiki\/VCard), 0-2048 bytes
  , vcard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_duration: *Optional*. Video duration in seconds
  , videoDuration :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | video_file_id: A valid file identifier for the video file
  , videoFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_height: *Optional*. Video height
  , videoHeight :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | video_url: A valid URL for the embedded video player or video file
  , videoUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | video_width: *Optional*. Video width
  , videoWidth :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | voice_duration: *Optional*. Recording duration in seconds
  , voiceDuration :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | voice_file_id: A valid file identifier for the voice message
  , voiceFileId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | voice_url: A valid URL for the voice recording
  , voiceUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResult
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= address obj : "audio_duration" Data.Aeson.Types.ToJSON..= audioDuration obj : "audio_file_id" Data.Aeson.Types.ToJSON..= audioFileId obj : "audio_url" Data.Aeson.Types.ToJSON..= audioUrl obj : "caption" Data.Aeson.Types.ToJSON..= caption obj : "caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj : "description" Data.Aeson.Types.ToJSON..= description obj : "document_file_id" Data.Aeson.Types.ToJSON..= documentFileId obj : "document_url" Data.Aeson.Types.ToJSON..= documentUrl obj : "first_name" Data.Aeson.Types.ToJSON..= firstName obj : "foursquare_id" Data.Aeson.Types.ToJSON..= foursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= foursquareType obj : "game_short_name" Data.Aeson.Types.ToJSON..= gameShortName obj : "gif_duration" Data.Aeson.Types.ToJSON..= gifDuration obj : "gif_file_id" Data.Aeson.Types.ToJSON..= gifFileId obj : "gif_height" Data.Aeson.Types.ToJSON..= gifHeight obj : "gif_url" Data.Aeson.Types.ToJSON..= gifUrl obj : "gif_width" Data.Aeson.Types.ToJSON..= gifWidth obj : "google_place_id" Data.Aeson.Types.ToJSON..= googlePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= googlePlaceType obj : "heading" Data.Aeson.Types.ToJSON..= heading obj : "hide_url" Data.Aeson.Types.ToJSON..= hideUrl obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= horizontalAccuracy obj : "id" Data.Aeson.Types.ToJSON..= id obj : "input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj : "last_name" Data.Aeson.Types.ToJSON..= lastName obj : "latitude" Data.Aeson.Types.ToJSON..= latitude obj : "live_period" Data.Aeson.Types.ToJSON..= livePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= longitude obj : "mime_type" Data.Aeson.Types.ToJSON..= mimeType obj : "mpeg4_duration" Data.Aeson.Types.ToJSON..= mpeg4Duration obj : "mpeg4_file_id" Data.Aeson.Types.ToJSON..= mpeg4FileId obj : "mpeg4_height" Data.Aeson.Types.ToJSON..= mpeg4Height obj : "mpeg4_url" Data.Aeson.Types.ToJSON..= mpeg4Url obj : "mpeg4_width" Data.Aeson.Types.ToJSON..= mpeg4Width obj : "parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj : "performer" Data.Aeson.Types.ToJSON..= performer obj : "phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj : "photo_file_id" Data.Aeson.Types.ToJSON..= photoFileId obj : "photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj : "photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= proximityAlertRadius obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "sticker_file_id" Data.Aeson.Types.ToJSON..= stickerFileId obj : "thumb_height" Data.Aeson.Types.ToJSON..= thumbHeight obj : "thumb_mime_type" Data.Aeson.Types.ToJSON..= thumbMimeType obj : "thumb_url" Data.Aeson.Types.ToJSON..= thumbUrl obj : "thumb_width" Data.Aeson.Types.ToJSON..= thumbWidth obj : "title" Data.Aeson.Types.ToJSON..= title obj : "type" Data.Aeson.Types.ToJSON..= type' obj : "url" Data.Aeson.Types.ToJSON..= url obj : "vcard" Data.Aeson.Types.ToJSON..= vcard obj : "video_duration" Data.Aeson.Types.ToJSON..= videoDuration obj : "video_file_id" Data.Aeson.Types.ToJSON..= videoFileId obj : "video_height" Data.Aeson.Types.ToJSON..= videoHeight obj : "video_url" Data.Aeson.Types.ToJSON..= videoUrl obj : "video_width" Data.Aeson.Types.ToJSON..= videoWidth obj : "voice_duration" Data.Aeson.Types.ToJSON..= voiceDuration obj : "voice_file_id" Data.Aeson.Types.ToJSON..= voiceFileId obj : "voice_url" Data.Aeson.Types.ToJSON..= voiceUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= address obj) GHC.Base.<> (("audio_duration" Data.Aeson.Types.ToJSON..= audioDuration obj) GHC.Base.<> (("audio_file_id" Data.Aeson.Types.ToJSON..= audioFileId obj) GHC.Base.<> (("audio_url" Data.Aeson.Types.ToJSON..= audioUrl obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= caption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("document_file_id" Data.Aeson.Types.ToJSON..= documentFileId obj) GHC.Base.<> (("document_url" Data.Aeson.Types.ToJSON..= documentUrl obj) GHC.Base.<> (("first_name" Data.Aeson.Types.ToJSON..= firstName obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= foursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= foursquareType obj) GHC.Base.<> (("game_short_name" Data.Aeson.Types.ToJSON..= gameShortName obj) GHC.Base.<> (("gif_duration" Data.Aeson.Types.ToJSON..= gifDuration obj) GHC.Base.<> (("gif_file_id" Data.Aeson.Types.ToJSON..= gifFileId obj) GHC.Base.<> (("gif_height" Data.Aeson.Types.ToJSON..= gifHeight obj) GHC.Base.<> (("gif_url" Data.Aeson.Types.ToJSON..= gifUrl obj) GHC.Base.<> (("gif_width" Data.Aeson.Types.ToJSON..= gifWidth obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= googlePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= googlePlaceType obj) GHC.Base.<> (("heading" Data.Aeson.Types.ToJSON..= heading obj) GHC.Base.<> (("hide_url" Data.Aeson.Types.ToJSON..= hideUrl obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= horizontalAccuracy obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= id obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= lastName obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= latitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= livePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= longitude obj) GHC.Base.<> (("mime_type" Data.Aeson.Types.ToJSON..= mimeType obj) GHC.Base.<> (("mpeg4_duration" Data.Aeson.Types.ToJSON..= mpeg4Duration obj) GHC.Base.<> (("mpeg4_file_id" Data.Aeson.Types.ToJSON..= mpeg4FileId obj) GHC.Base.<> (("mpeg4_height" Data.Aeson.Types.ToJSON..= mpeg4Height obj) GHC.Base.<> (("mpeg4_url" Data.Aeson.Types.ToJSON..= mpeg4Url obj) GHC.Base.<> (("mpeg4_width" Data.Aeson.Types.ToJSON..= mpeg4Width obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj) GHC.Base.<> (("performer" Data.Aeson.Types.ToJSON..= performer obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj) GHC.Base.<> (("photo_file_id" Data.Aeson.Types.ToJSON..= photoFileId obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= photoHeight obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= photoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= photoWidth obj) GHC.Base.<> (("proximity_alert_radius" Data.Aeson.Types.ToJSON..= proximityAlertRadius obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("sticker_file_id" Data.Aeson.Types.ToJSON..= stickerFileId obj) GHC.Base.<> (("thumb_height" Data.Aeson.Types.ToJSON..= thumbHeight obj) GHC.Base.<> (("thumb_mime_type" Data.Aeson.Types.ToJSON..= thumbMimeType obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= thumbUrl obj) GHC.Base.<> (("thumb_width" Data.Aeson.Types.ToJSON..= thumbWidth obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= title obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= type' obj) GHC.Base.<> (("url" Data.Aeson.Types.ToJSON..= url obj) GHC.Base.<> (("vcard" Data.Aeson.Types.ToJSON..= vcard obj) GHC.Base.<> (("video_duration" Data.Aeson.Types.ToJSON..= videoDuration obj) GHC.Base.<> (("video_file_id" Data.Aeson.Types.ToJSON..= videoFileId obj) GHC.Base.<> (("video_height" Data.Aeson.Types.ToJSON..= videoHeight obj) GHC.Base.<> (("video_url" Data.Aeson.Types.ToJSON..= videoUrl obj) GHC.Base.<> (("video_width" Data.Aeson.Types.ToJSON..= videoWidth obj) GHC.Base.<> (("voice_duration" Data.Aeson.Types.ToJSON..= voiceDuration obj) GHC.Base.<> (("voice_file_id" Data.Aeson.Types.ToJSON..= voiceFileId obj) GHC.Base.<> ("voice_url" Data.Aeson.Types.ToJSON..= voiceUrl obj)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResult
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResult" (\obj -> ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure InlineQueryResult GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "game_short_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "gif_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hide_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "mpeg4_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "performer")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sticker_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_mime_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_duration")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_url"))
-- | Create a new 'InlineQueryResult' with all required fields.
mkInlineQueryResult :: InlineQueryResult
mkInlineQueryResult = InlineQueryResult{address = GHC.Maybe.Nothing,
                                        audioDuration = GHC.Maybe.Nothing,
                                        audioFileId = GHC.Maybe.Nothing,
                                        audioUrl = GHC.Maybe.Nothing,
                                        caption = GHC.Maybe.Nothing,
                                        captionEntities = GHC.Maybe.Nothing,
                                        description = GHC.Maybe.Nothing,
                                        documentFileId = GHC.Maybe.Nothing,
                                        documentUrl = GHC.Maybe.Nothing,
                                        firstName = GHC.Maybe.Nothing,
                                        foursquareId = GHC.Maybe.Nothing,
                                        foursquareType = GHC.Maybe.Nothing,
                                        gameShortName = GHC.Maybe.Nothing,
                                        gifDuration = GHC.Maybe.Nothing,
                                        gifFileId = GHC.Maybe.Nothing,
                                        gifHeight = GHC.Maybe.Nothing,
                                        gifUrl = GHC.Maybe.Nothing,
                                        gifWidth = GHC.Maybe.Nothing,
                                        googlePlaceId = GHC.Maybe.Nothing,
                                        googlePlaceType = GHC.Maybe.Nothing,
                                        heading = GHC.Maybe.Nothing,
                                        hideUrl = GHC.Maybe.Nothing,
                                        horizontalAccuracy = GHC.Maybe.Nothing,
                                        id = GHC.Maybe.Nothing,
                                        inputMessageContent = GHC.Maybe.Nothing,
                                        lastName = GHC.Maybe.Nothing,
                                        latitude = GHC.Maybe.Nothing,
                                        livePeriod = GHC.Maybe.Nothing,
                                        longitude = GHC.Maybe.Nothing,
                                        mimeType = GHC.Maybe.Nothing,
                                        mpeg4Duration = GHC.Maybe.Nothing,
                                        mpeg4FileId = GHC.Maybe.Nothing,
                                        mpeg4Height = GHC.Maybe.Nothing,
                                        mpeg4Url = GHC.Maybe.Nothing,
                                        mpeg4Width = GHC.Maybe.Nothing,
                                        parseMode = GHC.Maybe.Nothing,
                                        performer = GHC.Maybe.Nothing,
                                        phoneNumber = GHC.Maybe.Nothing,
                                        photoFileId = GHC.Maybe.Nothing,
                                        photoHeight = GHC.Maybe.Nothing,
                                        photoUrl = GHC.Maybe.Nothing,
                                        photoWidth = GHC.Maybe.Nothing,
                                        proximityAlertRadius = GHC.Maybe.Nothing,
                                        replyMarkup = GHC.Maybe.Nothing,
                                        stickerFileId = GHC.Maybe.Nothing,
                                        thumbHeight = GHC.Maybe.Nothing,
                                        thumbMimeType = GHC.Maybe.Nothing,
                                        thumbUrl = GHC.Maybe.Nothing,
                                        thumbWidth = GHC.Maybe.Nothing,
                                        title = GHC.Maybe.Nothing,
                                        type' = GHC.Maybe.Nothing,
                                        url = GHC.Maybe.Nothing,
                                        vcard = GHC.Maybe.Nothing,
                                        videoDuration = GHC.Maybe.Nothing,
                                        videoFileId = GHC.Maybe.Nothing,
                                        videoHeight = GHC.Maybe.Nothing,
                                        videoUrl = GHC.Maybe.Nothing,
                                        videoWidth = GHC.Maybe.Nothing,
                                        voiceDuration = GHC.Maybe.Nothing,
                                        voiceFileId = GHC.Maybe.Nothing,
                                        voiceUrl = GHC.Maybe.Nothing}
-- | Defines the enum schema located at @components.schemas.InlineQueryResult.anyOf.properties.mime_type@ in the specification.
-- 
-- Mime type of the content of the file, either “application\/pdf” or “application\/zip”
data MimeType =
   MimeTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | MimeTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | MimeTypeEnumApplicationPdf -- ^ Represents the JSON value @"application/pdf"@
  | MimeTypeEnumApplicationZip -- ^ Represents the JSON value @"application/zip"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON MimeType
    where toJSON (MimeTypeOther val) = val
          toJSON (MimeTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (MimeTypeEnumApplicationPdf) = "application/pdf"
          toJSON (MimeTypeEnumApplicationZip) = "application/zip"
instance Data.Aeson.Types.FromJSON.FromJSON MimeType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "application/pdf" -> MimeTypeEnumApplicationPdf
                                            | val GHC.Classes.== "application/zip" -> MimeTypeEnumApplicationZip
                                            | GHC.Base.otherwise -> MimeTypeOther val)
-- | Defines the enum schema located at @components.schemas.InlineQueryResult.anyOf.properties.thumb_mime_type@ in the specification.
-- 
-- *Optional*. MIME type of the thumbnail, must be one of “image\/jpeg”, “image\/gif”, or “video\/mp4”. Defaults to “image\/jpeg”
data ThumbMimeType =
   ThumbMimeTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | ThumbMimeTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | ThumbMimeTypeEnumImageJpeg -- ^ Represents the JSON value @"image/jpeg"@
  | ThumbMimeTypeEnumImageGif -- ^ Represents the JSON value @"image/gif"@
  | ThumbMimeTypeEnumVideoMp4 -- ^ Represents the JSON value @"video/mp4"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ThumbMimeType
    where toJSON (ThumbMimeTypeOther val) = val
          toJSON (ThumbMimeTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (ThumbMimeTypeEnumImageJpeg) = "image/jpeg"
          toJSON (ThumbMimeTypeEnumImageGif) = "image/gif"
          toJSON (ThumbMimeTypeEnumVideoMp4) = "video/mp4"
instance Data.Aeson.Types.FromJSON.FromJSON ThumbMimeType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "image/jpeg" -> ThumbMimeTypeEnumImageJpeg
                                            | val GHC.Classes.== "image/gif" -> ThumbMimeTypeEnumImageGif
                                            | val GHC.Classes.== "video/mp4" -> ThumbMimeTypeEnumVideoMp4
                                            | GHC.Base.otherwise -> ThumbMimeTypeOther val)
