-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultArticle
module TgBotAPI.Types.InlineQueryResultArticle where

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

-- | Defines the object schema located at @components.schemas.InlineQueryResultArticle@ in the specification.
-- 
-- Represents a link to an article or web page.
data InlineQueryResultArticle = InlineQueryResultArticle {
  -- | description: *Optional*. Short description of the result
  inlineQueryResultArticleDescription :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | hide_url: *Optional*. Pass *True*, if you don\'t want the URL to be shown in the message
  , inlineQueryResultArticleHideUrl :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | id: Unique identifier for this result, 1-64 Bytes
  , inlineQueryResultArticleId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultArticleInputMessageContent :: InputMessageContent
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultArticleReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | thumb_height: *Optional*. Thumbnail height
  , inlineQueryResultArticleThumbHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | thumb_url: *Optional*. Url of the thumbnail for the result
  , inlineQueryResultArticleThumbUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_width: *Optional*. Thumbnail width
  , inlineQueryResultArticleThumbWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: Title of the result
  , inlineQueryResultArticleTitle :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *article*
  , inlineQueryResultArticleType :: Data.Text.Internal.Text
  -- | url: *Optional*. URL of the result
  , inlineQueryResultArticleUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultArticle
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleDescription obj : "hide_url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleHideUrl obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleInputMessageContent obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleReplyMarkup obj : "thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbHeight obj : "thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbUrl obj : "thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbWidth obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleType obj : "url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleUrl obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleDescription obj) GHC.Base.<> (("hide_url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleHideUrl obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleInputMessageContent obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleReplyMarkup obj) GHC.Base.<> (("thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbHeight obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbUrl obj) GHC.Base.<> (("thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleThumbWidth obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleTitle obj) GHC.Base.<> (("type" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleType obj) GHC.Base.<> ("url" Data.Aeson.Types.ToJSON..= inlineQueryResultArticleUrl obj)))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultArticle
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultArticle" (\obj -> ((((((((((GHC.Base.pure InlineQueryResultArticle GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "hide_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "url"))
-- | Create a new 'InlineQueryResultArticle' with all required fields.
mkInlineQueryResultArticle :: Data.Text.Internal.Text -- ^ 'inlineQueryResultArticleId'
  -> InputMessageContent -- ^ 'inlineQueryResultArticleInputMessageContent'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultArticleTitle'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultArticleType'
  -> InlineQueryResultArticle
mkInlineQueryResultArticle inlineQueryResultArticleId inlineQueryResultArticleInputMessageContent inlineQueryResultArticleTitle inlineQueryResultArticleType = InlineQueryResultArticle{inlineQueryResultArticleDescription = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleHideUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleId = inlineQueryResultArticleId,
                                                                                                                                                                                        inlineQueryResultArticleInputMessageContent = inlineQueryResultArticleInputMessageContent,
                                                                                                                                                                                        inlineQueryResultArticleReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleThumbHeight = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleThumbUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleThumbWidth = GHC.Maybe.Nothing,
                                                                                                                                                                                        inlineQueryResultArticleTitle = inlineQueryResultArticleTitle,
                                                                                                                                                                                        inlineQueryResultArticleType = inlineQueryResultArticleType,
                                                                                                                                                                                        inlineQueryResultArticleUrl = GHC.Maybe.Nothing}