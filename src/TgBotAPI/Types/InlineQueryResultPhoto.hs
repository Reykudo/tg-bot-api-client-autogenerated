-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultPhoto
module TgBotAPI.Types.InlineQueryResultPhoto where

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
import {-# SOURCE #-} TgBotAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} TgBotAPI.Types.InputMessageContent
import {-# SOURCE #-} TgBotAPI.Types.MessageEntity

-- | Defines the object schema located at @components.schemas.InlineQueryResultPhoto@ in the specification.
-- 
-- Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the photo.
data InlineQueryResultPhoto = InlineQueryResultPhoto {
  -- | caption: *Optional*. Caption of the photo to be sent, 0-1024 characters after entities parsing
  inlineQueryResultPhotoCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , inlineQueryResultPhotoCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , inlineQueryResultPhotoDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this result, 1-64 bytes
  , inlineQueryResultPhotoId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultPhotoInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the photo caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , inlineQueryResultPhotoParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_height: *Optional*. Height of the photo
  , inlineQueryResultPhotoPhotoHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | photo_url: A valid URL of the photo. Photo must be in **jpeg** format. Photo size must not exceed 5MB
  , inlineQueryResultPhotoPhotoUrl :: Data.Text.Internal.Text
  -- | photo_width: *Optional*. Width of the photo
  , inlineQueryResultPhotoPhotoWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultPhotoReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | thumb_url: URL of the thumbnail for the photo
  , inlineQueryResultPhotoThumbUrl :: Data.Text.Internal.Text
  -- | title: *Optional*. Title for the result
  , inlineQueryResultPhotoTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of the result, must be *photo*
  , inlineQueryResultPhotoType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultPhoto
    where toJSON obj = Data.Aeson.Types.Internal.object ("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoCaptionEntities obj : "description" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoDescription obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoInputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoParseMode obj : "photo_height" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoHeight obj : "photo_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoUrl obj : "photo_width" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoWidth obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoReplyMarkup obj : "thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoThumbUrl obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("caption" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoCaptionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoDescription obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoInputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoParseMode obj) GHC.Base.<> (("photo_height" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoHeight obj) GHC.Base.<> (("photo_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoUrl obj) GHC.Base.<> (("photo_width" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoPhotoWidth obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoReplyMarkup obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoThumbUrl obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoTitle obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultPhotoType obj)))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultPhoto
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultPhoto" (\obj -> ((((((((((((GHC.Base.pure InlineQueryResultPhoto GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "photo_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultPhoto' with all required fields.
mkInlineQueryResultPhoto :: Data.Text.Internal.Text -- ^ 'inlineQueryResultPhotoId'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultPhotoPhotoUrl'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultPhotoThumbUrl'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultPhotoType'
  -> InlineQueryResultPhoto
mkInlineQueryResultPhoto inlineQueryResultPhotoId inlineQueryResultPhotoPhotoUrl inlineQueryResultPhotoThumbUrl inlineQueryResultPhotoType = InlineQueryResultPhoto{inlineQueryResultPhotoCaption = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoDescription = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoId = inlineQueryResultPhotoId,
                                                                                                                                                                    inlineQueryResultPhotoInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoParseMode = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoPhotoHeight = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoPhotoUrl = inlineQueryResultPhotoPhotoUrl,
                                                                                                                                                                    inlineQueryResultPhotoPhotoWidth = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoThumbUrl = inlineQueryResultPhotoThumbUrl,
                                                                                                                                                                    inlineQueryResultPhotoTitle = GHC.Maybe.Nothing,
                                                                                                                                                                    inlineQueryResultPhotoType = inlineQueryResultPhotoType}