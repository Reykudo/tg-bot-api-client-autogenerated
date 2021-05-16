-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema InlineQueryResultCachedPhoto
module TgBotAPI.Types.InlineQueryResultCachedPhoto where

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
import  {-# SOURCE #-}  TgBotAPI.Types.InputMessageContent (InputMessageContent)
import  {-# SOURCE #-}  TgBotAPI.Types.MessageEntity (MessageEntity)

-- | Defines the object schema located at @components.schemas.InlineQueryResultCachedPhoto@ in the specification.
-- 
-- Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the photo.
data InlineQueryResultCachedPhoto = InlineQueryResultCachedPhoto {
  -- | caption: *Optional*. Caption of the photo to be sent, 0-1024 characters after entities parsing
  caption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. List of special entities that appear in the caption, which can be specified instead of *parse\\_mode*
  , captionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | description: *Optional*. Short description of the result
  , description :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this result, 1-64 bytes
  , id :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | parse_mode: *Optional*. Mode for parsing entities in the photo caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , parseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | photo_file_id: A valid file identifier of the photo
  , photoFileId :: Data.Text.Internal.Text
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | title: *Optional*. Title for the result
  , title :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | type: Type of the result, must be *photo*
  , type' :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultCachedPhoto
    where toJSON obj = Data.Aeson.Types.Internal.object ("caption" Data.Aeson.Types.ToJSON..= caption obj : "caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj : "description" Data.Aeson.Types.ToJSON..= description obj : "id" Data.Aeson.Types.ToJSON..= id obj : "input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj : "parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj : "photo_file_id" Data.Aeson.Types.ToJSON..= photoFileId obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "title" Data.Aeson.Types.ToJSON..= title obj : "type" Data.Aeson.Types.ToJSON..= type' obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("caption" Data.Aeson.Types.ToJSON..= caption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= captionEntities obj) GHC.Base.<> (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= id obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inputMessageContent obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj) GHC.Base.<> (("photo_file_id" Data.Aeson.Types.ToJSON..= photoFileId obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= title obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= type' obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultCachedPhoto
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultCachedPhoto" (\obj -> (((((((((GHC.Base.pure InlineQueryResultCachedPhoto GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "photo_file_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultCachedPhoto' with all required fields.
mkInlineQueryResultCachedPhoto :: Data.Text.Internal.Text -- ^ 'id'
  -> Data.Text.Internal.Text -- ^ 'photoFileId'
  -> Data.Text.Internal.Text -- ^ 'type''
  -> InlineQueryResultCachedPhoto
mkInlineQueryResultCachedPhoto id photoFileId type' = InlineQueryResultCachedPhoto{caption = GHC.Maybe.Nothing,
                                                                                   captionEntities = GHC.Maybe.Nothing,
                                                                                   description = GHC.Maybe.Nothing,
                                                                                   id = id,
                                                                                   inputMessageContent = GHC.Maybe.Nothing,
                                                                                   parseMode = GHC.Maybe.Nothing,
                                                                                   photoFileId = photoFileId,
                                                                                   replyMarkup = GHC.Maybe.Nothing,
                                                                                   title = GHC.Maybe.Nothing,
                                                                                   type' = type'}
