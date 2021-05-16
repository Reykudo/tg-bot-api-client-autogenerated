-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postEditMessageText
module TgBotAPI.Operations.PostEditMessageText where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Control.Monad.Trans.Reader
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Either
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified Data.Vector
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified Network.HTTP.Client
import qualified Network.HTTP.Client as Network.HTTP.Client.Request
import qualified Network.HTTP.Client as Network.HTTP.Client.Types
import qualified Network.HTTP.Simple
import qualified Network.HTTP.Types
import qualified Network.HTTP.Types as Network.HTTP.Types.Status
import qualified Network.HTTP.Types as Network.HTTP.Types.URI
import qualified TgBotAPI.Common
import TgBotAPI.Types

-- | > POST /editMessageText
-- 
-- Use this method to edit text and [game](https:\/\/core.telegram.org\/bots\/api\/\#games) messages. On success, if the edited message is not an inline message, the edited [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned, otherwise *True* is returned.
postEditMessageText :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageTextRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostEditMessageTextResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageText body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEditMessageTextResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageTextResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            PostEditMessageTextResponseBody200)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageTextResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageText") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/editMessageText.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageTextRequestBody = PostEditMessageTextRequestBody {
  -- | chat_id: Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  chatId :: (GHC.Maybe.Maybe ChatIdVariants)
  -- | disable_web_page_preview: Disables link previews for links in this message
  , disableWebPagePreview :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | entities: List of special entities that appear in message text, which can be specified instead of *parse\\_mode*
  , entities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | inline_message_id: Required if *chat\\_id* and *message\\_id* are not specified. Identifier of the inline message
  , inlineMessageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message_id: Required if *inline\\_message\\_id* is not specified. Identifier of the message to edit
  , messageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | parse_mode: Mode for parsing entities in the message text. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , parseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | text: New text of the message, 1-4096 characters after entities parsing
  , text :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageTextRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "disable_web_page_preview" Data.Aeson.Types.ToJSON..= disableWebPagePreview obj : "entities" Data.Aeson.Types.ToJSON..= entities obj : "inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj : "message_id" Data.Aeson.Types.ToJSON..= messageId obj : "parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "text" Data.Aeson.Types.ToJSON..= text obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("disable_web_page_preview" Data.Aeson.Types.ToJSON..= disableWebPagePreview obj) GHC.Base.<> (("entities" Data.Aeson.Types.ToJSON..= entities obj) GHC.Base.<> (("inline_message_id" Data.Aeson.Types.ToJSON..= inlineMessageId obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= messageId obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= parseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> ("text" Data.Aeson.Types.ToJSON..= text obj))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageTextRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageTextRequestBody" (\obj -> (((((((GHC.Base.pure PostEditMessageTextRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_web_page_preview")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "text"))
-- | Create a new 'PostEditMessageTextRequestBody' with all required fields.
mkPostEditMessageTextRequestBody :: Data.Text.Internal.Text -- ^ 'text'
  -> PostEditMessageTextRequestBody
mkPostEditMessageTextRequestBody text = PostEditMessageTextRequestBody{chatId = GHC.Maybe.Nothing,
                                                                       disableWebPagePreview = GHC.Maybe.Nothing,
                                                                       entities = GHC.Maybe.Nothing,
                                                                       inlineMessageId = GHC.Maybe.Nothing,
                                                                       messageId = GHC.Maybe.Nothing,
                                                                       parseMode = GHC.Maybe.Nothing,
                                                                       replyMarkup = GHC.Maybe.Nothing,
                                                                       text = text}
-- | Defines the oneOf schema located at @paths.\/editMessageText.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data ChatIdVariants =
   ChatIdInt GHC.Types.Int
  | ChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatIdVariants
    where toJSON (ChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChatIdVariants
    where parseJSON val = case (ChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postEditMessageText'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEditMessageTextResponseError' is used.
data PostEditMessageTextResponse =
   PostEditMessageTextResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostEditMessageTextResponse200 PostEditMessageTextResponseBody200 -- ^ 
  | PostEditMessageTextResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/editMessageText.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditMessageTextResponseBody200 = PostEditMessageTextResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: ResultVariants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditMessageTextResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditMessageTextResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditMessageTextResponseBody200" (\obj -> (GHC.Base.pure PostEditMessageTextResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostEditMessageTextResponseBody200' with all required fields.
mkPostEditMessageTextResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> ResultVariants -- ^ 'result'
  -> PostEditMessageTextResponseBody200
mkPostEditMessageTextResponseBody200 ok result = PostEditMessageTextResponseBody200{ok = ok,
                                                                                    result = result}
-- | Defines the oneOf schema located at @paths.\/editMessageText.POST.responses.200.content.application\/json.schema.properties.result.anyOf@ in the specification.
-- 
-- 
data ResultVariants =
   ResultMessage Message
  | ResultBool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ResultVariants
    where toJSON (ResultMessage a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ResultBool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ResultVariants
    where parseJSON val = case (ResultMessage Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ResultBool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > POST /editMessageText
-- 
-- The same as 'postEditMessageText' but accepts an explicit configuration.
postEditMessageTextWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageTextRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostEditMessageTextResponse) -- ^ Monadic computation which returns the result of the operation
postEditMessageTextWithConfiguration config
                                     body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEditMessageTextResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageTextResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                             PostEditMessageTextResponseBody200)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditMessageTextResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageText") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageText
-- 
-- The same as 'postEditMessageText' but returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageTextRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditMessageTextRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageTextRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageText") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editMessageText
-- 
-- The same as 'postEditMessageText' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postEditMessageTextWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditMessageTextRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditMessageTextWithConfigurationRaw config
                                        body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editMessageText") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
