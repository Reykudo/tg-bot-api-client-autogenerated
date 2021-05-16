-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postCopyMessage
module TgBotAPI.Operations.PostCopyMessage where

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

-- | > POST /copyMessage
-- 
-- Use this method to copy messages of any kind. Service messages and invoice messages can\'t be copied. The method is analogous to the method [forwardMessage](https:\/\/core.telegram.org\/bots\/api\/\#forwardmessage), but the copied message doesn\'t have a link to the original message. Returns the [MessageId](https:\/\/core.telegram.org\/bots\/api\/\#messageid) of the sent message on success.
postCopyMessage :: forall m . TgBotAPI.Common.MonadHTTP m => PostCopyMessageRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostCopyMessageResponse) -- ^ Monadic computation which returns the result of the operation
postCopyMessage body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostCopyMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCopyMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                PostCopyMessageResponseBody200)
                                                                                                                                                                 | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCopyMessageResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                  Error)
                                                                                                                                                                 | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/copyMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/copyMessage.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCopyMessageRequestBody = PostCopyMessageRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  postCopyMessageRequestBodyAllowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | caption: New caption for media, 0-1024 characters after entities parsing. If not specified, the original caption is kept
  , postCopyMessageRequestBodyCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: List of special entities that appear in the new caption, which can be specified instead of *parse\\_mode*
  , postCopyMessageRequestBodyCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , postCopyMessageRequestBodyChatId :: PostCopyMessageRequestBodyChatIdVariants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , postCopyMessageRequestBodyDisableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | from_chat_id: Unique identifier for the chat where the original message was sent (or channel username in the format \`\@channelusername\`)
  , postCopyMessageRequestBodyFromChatId :: PostCopyMessageRequestBodyFromChatIdVariants
  -- | message_id: Message identifier in the chat specified in *from\\_chat\\_id*
  , postCopyMessageRequestBodyMessageId :: GHC.Types.Int
  -- | parse_mode: Mode for parsing entities in the new caption. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , postCopyMessageRequestBodyParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
  , postCopyMessageRequestBodyReplyMarkup :: (GHC.Maybe.Maybe PostCopyMessageRequestBodyReplyMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , postCopyMessageRequestBodyReplyToMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCopyMessageRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyAllowSendingWithoutReply obj : "caption" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyCaptionEntities obj : "chat_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyChatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyDisableNotification obj : "from_chat_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyFromChatId obj : "message_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyMessageId obj : "parse_mode" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyParseMode obj : "reply_markup" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyToMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyAllowSendingWithoutReply obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyCaptionEntities obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyChatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyDisableNotification obj) GHC.Base.<> (("from_chat_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyFromChatId obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyMessageId obj) GHC.Base.<> (("parse_mode" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyParseMode obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkup obj) GHC.Base.<> ("reply_to_message_id" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyToMessageId obj))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCopyMessageRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCopyMessageRequestBody" (\obj -> (((((((((GHC.Base.pure PostCopyMessageRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "from_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id"))
-- | Create a new 'PostCopyMessageRequestBody' with all required fields.
mkPostCopyMessageRequestBody :: PostCopyMessageRequestBodyChatIdVariants -- ^ 'postCopyMessageRequestBodyChatId'
  -> PostCopyMessageRequestBodyFromChatIdVariants -- ^ 'postCopyMessageRequestBodyFromChatId'
  -> GHC.Types.Int -- ^ 'postCopyMessageRequestBodyMessageId'
  -> PostCopyMessageRequestBody
mkPostCopyMessageRequestBody postCopyMessageRequestBodyChatId postCopyMessageRequestBodyFromChatId postCopyMessageRequestBodyMessageId = PostCopyMessageRequestBody{postCopyMessageRequestBodyAllowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyCaption = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyCaptionEntities = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyChatId = postCopyMessageRequestBodyChatId,
                                                                                                                                                                    postCopyMessageRequestBodyDisableNotification = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyFromChatId = postCopyMessageRequestBodyFromChatId,
                                                                                                                                                                    postCopyMessageRequestBodyMessageId = postCopyMessageRequestBodyMessageId,
                                                                                                                                                                    postCopyMessageRequestBodyParseMode = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                    postCopyMessageRequestBodyReplyToMessageId = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/copyMessage.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostCopyMessageRequestBodyChatIdVariants =
   PostCopyMessageRequestBodyChatIdInt GHC.Types.Int
  | PostCopyMessageRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCopyMessageRequestBodyChatIdVariants
    where toJSON (PostCopyMessageRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostCopyMessageRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostCopyMessageRequestBodyChatIdVariants
    where parseJSON val = case (PostCopyMessageRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostCopyMessageRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the oneOf schema located at @paths.\/copyMessage.POST.requestBody.content.application\/json.schema.properties.from_chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the chat where the original message was sent (or channel username in the format \`\@channelusername\`)
data PostCopyMessageRequestBodyFromChatIdVariants =
   PostCopyMessageRequestBodyFromChatIdInt GHC.Types.Int
  | PostCopyMessageRequestBodyFromChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCopyMessageRequestBodyFromChatIdVariants
    where toJSON (PostCopyMessageRequestBodyFromChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostCopyMessageRequestBodyFromChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostCopyMessageRequestBodyFromChatIdVariants
    where parseJSON val = case (PostCopyMessageRequestBodyFromChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostCopyMessageRequestBodyFromChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/copyMessage.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
data PostCopyMessageRequestBodyReplyMarkup = PostCopyMessageRequestBodyReplyMarkup {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  postCopyMessageRequestBodyReplyMarkupForceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , postCopyMessageRequestBodyReplyMarkupInlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , postCopyMessageRequestBodyReplyMarkupKeyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , postCopyMessageRequestBodyReplyMarkupOneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , postCopyMessageRequestBodyReplyMarkupRemoveKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , postCopyMessageRequestBodyReplyMarkupResizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , postCopyMessageRequestBodyReplyMarkupSelective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCopyMessageRequestBodyReplyMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupForceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupInlineKeyboard obj : "keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupKeyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupOneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupRemoveKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupResizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupSelective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupForceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupInlineKeyboard obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupKeyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupOneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupRemoveKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupResizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= postCopyMessageRequestBodyReplyMarkupSelective obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostCopyMessageRequestBodyReplyMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCopyMessageRequestBodyReplyMarkup" (\obj -> ((((((GHC.Base.pure PostCopyMessageRequestBodyReplyMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'PostCopyMessageRequestBodyReplyMarkup' with all required fields.
mkPostCopyMessageRequestBodyReplyMarkup :: PostCopyMessageRequestBodyReplyMarkup
mkPostCopyMessageRequestBodyReplyMarkup = PostCopyMessageRequestBodyReplyMarkup{postCopyMessageRequestBodyReplyMarkupForceReply = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupInlineKeyboard = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupKeyboard = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupOneTimeKeyboard = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupRemoveKeyboard = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupResizeKeyboard = GHC.Maybe.Nothing,
                                                                                postCopyMessageRequestBodyReplyMarkupSelective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postCopyMessage'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostCopyMessageResponseError' is used.
data PostCopyMessageResponse =
   PostCopyMessageResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostCopyMessageResponse200 PostCopyMessageResponseBody200 -- ^ 
  | PostCopyMessageResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/copyMessage.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostCopyMessageResponseBody200 = PostCopyMessageResponseBody200 {
  -- | ok
  postCopyMessageResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a unique message identifier.
  , postCopyMessageResponseBody200Result :: MessageId
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostCopyMessageResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postCopyMessageResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postCopyMessageResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postCopyMessageResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postCopyMessageResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostCopyMessageResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostCopyMessageResponseBody200" (\obj -> (GHC.Base.pure PostCopyMessageResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostCopyMessageResponseBody200' with all required fields.
mkPostCopyMessageResponseBody200 :: GHC.Types.Bool -- ^ 'postCopyMessageResponseBody200Ok'
  -> MessageId -- ^ 'postCopyMessageResponseBody200Result'
  -> PostCopyMessageResponseBody200
mkPostCopyMessageResponseBody200 postCopyMessageResponseBody200Ok postCopyMessageResponseBody200Result = PostCopyMessageResponseBody200{postCopyMessageResponseBody200Ok = postCopyMessageResponseBody200Ok,
                                                                                                                                        postCopyMessageResponseBody200Result = postCopyMessageResponseBody200Result}
-- | > POST /copyMessage
-- 
-- The same as 'postCopyMessage' but accepts an explicit configuration.
postCopyMessageWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostCopyMessageRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostCopyMessageResponse) -- ^ Monadic computation which returns the result of the operation
postCopyMessageWithConfiguration config
                                 body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostCopyMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostCopyMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                 PostCopyMessageResponseBody200)
                                                                                                                                                                                  | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostCopyMessageResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                   Error)
                                                                                                                                                                                  | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/copyMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /copyMessage
-- 
-- The same as 'postCopyMessage' but returns the raw 'Data.ByteString.Char8.ByteString'.
postCopyMessageRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostCopyMessageRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCopyMessageRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/copyMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /copyMessage
-- 
-- The same as 'postCopyMessage' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postCopyMessageWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostCopyMessageRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postCopyMessageWithConfigurationRaw config
                                    body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/copyMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)