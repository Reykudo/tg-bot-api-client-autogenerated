-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSendPoll
module TgBotAPI.Operations.PostSendPoll where

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

-- | > POST /sendPoll
-- 
-- Use this method to send a native poll. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendPoll :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendPollRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendPollResponse) -- ^ Monadic computation which returns the result of the operation
postSendPoll body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendPollResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendPollResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       PostSendPollResponseBody200)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendPollResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendPoll.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendPollRequestBody = PostSendPollRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  allowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | allows_multiple_answers: True, if the poll allows multiple answers, ignored for polls in quiz mode, defaults to *False*
  , allowsMultipleAnswers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  , chatId :: ChatIdVariants
  -- | close_date: Point in time (Unix timestamp) when the poll will be automatically closed. Must be at least 5 and no more than 600 seconds in the future. Can\'t be used together with *open\\_period*.
  , closeDate :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | correct_option_id: 0-based identifier of the correct answer option, required for polls in quiz mode
  , correctOptionId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , disableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | explanation: Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters with at most 2 line feeds after entities parsing
  , explanation :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | explanation_entities: List of special entities that appear in the poll explanation, which can be specified instead of *parse\\_mode*
  , explanationEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | explanation_parse_mode: Mode for parsing entities in the explanation. See [formatting options](https:\/\/core.telegram.org\/bots\/api\/\#formatting-options) for more details.
  , explanationParseMode :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | is_anonymous: True, if the poll needs to be anonymous, defaults to *True*
  , isAnonymous :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | is_closed: Pass *True*, if the poll needs to be immediately closed. This can be useful for poll preview.
  , isClosed :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | open_period: Amount of time in seconds the poll will be active after creation, 5-600. Can\'t be used together with *close\\_date*.
  , openPeriod :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | options: A JSON-serialized list of answer options, 2-10 strings 1-100 characters each
  , options :: ([Data.Text.Internal.Text])
  -- | question: Poll question, 1-300 characters
  , question :: Data.Text.Internal.Text
  -- | reply_markup: Additional interface options. A JSON-serialized object for an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\/\/core.telegram.org\/bots\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
  , replyMarkup :: (GHC.Maybe.Maybe ReplyMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , replyToMessageId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | type: Poll type, “quiz” or “regular”, defaults to “regular”
  , type' :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendPollRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj : "allows_multiple_answers" Data.Aeson.Types.ToJSON..= allowsMultipleAnswers obj : "chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "close_date" Data.Aeson.Types.ToJSON..= closeDate obj : "correct_option_id" Data.Aeson.Types.ToJSON..= correctOptionId obj : "disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj : "explanation" Data.Aeson.Types.ToJSON..= explanation obj : "explanation_entities" Data.Aeson.Types.ToJSON..= explanationEntities obj : "explanation_parse_mode" Data.Aeson.Types.ToJSON..= explanationParseMode obj : "is_anonymous" Data.Aeson.Types.ToJSON..= isAnonymous obj : "is_closed" Data.Aeson.Types.ToJSON..= isClosed obj : "open_period" Data.Aeson.Types.ToJSON..= openPeriod obj : "options" Data.Aeson.Types.ToJSON..= options obj : "question" Data.Aeson.Types.ToJSON..= question obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj : "type" Data.Aeson.Types.ToJSON..= type' obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= allowSendingWithoutReply obj) GHC.Base.<> (("allows_multiple_answers" Data.Aeson.Types.ToJSON..= allowsMultipleAnswers obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("close_date" Data.Aeson.Types.ToJSON..= closeDate obj) GHC.Base.<> (("correct_option_id" Data.Aeson.Types.ToJSON..= correctOptionId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj) GHC.Base.<> (("explanation" Data.Aeson.Types.ToJSON..= explanation obj) GHC.Base.<> (("explanation_entities" Data.Aeson.Types.ToJSON..= explanationEntities obj) GHC.Base.<> (("explanation_parse_mode" Data.Aeson.Types.ToJSON..= explanationParseMode obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= isAnonymous obj) GHC.Base.<> (("is_closed" Data.Aeson.Types.ToJSON..= isClosed obj) GHC.Base.<> (("open_period" Data.Aeson.Types.ToJSON..= openPeriod obj) GHC.Base.<> (("options" Data.Aeson.Types.ToJSON..= options obj) GHC.Base.<> (("question" Data.Aeson.Types.ToJSON..= question obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj) GHC.Base.<> (("reply_to_message_id" Data.Aeson.Types.ToJSON..= replyToMessageId obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= type' obj)))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendPollRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendPollRequestBody" (\obj -> ((((((((((((((((GHC.Base.pure PostSendPollRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allows_multiple_answers")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "close_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "correct_option_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "explanation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "explanation_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "explanation_parse_mode")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_closed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "open_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "options")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "question")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "type"))
-- | Create a new 'PostSendPollRequestBody' with all required fields.
mkPostSendPollRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> [Data.Text.Internal.Text] -- ^ 'options'
  -> Data.Text.Internal.Text -- ^ 'question'
  -> PostSendPollRequestBody
mkPostSendPollRequestBody chatId options question = PostSendPollRequestBody{allowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                            allowsMultipleAnswers = GHC.Maybe.Nothing,
                                                                            chatId = chatId,
                                                                            closeDate = GHC.Maybe.Nothing,
                                                                            correctOptionId = GHC.Maybe.Nothing,
                                                                            disableNotification = GHC.Maybe.Nothing,
                                                                            explanation = GHC.Maybe.Nothing,
                                                                            explanationEntities = GHC.Maybe.Nothing,
                                                                            explanationParseMode = GHC.Maybe.Nothing,
                                                                            isAnonymous = GHC.Maybe.Nothing,
                                                                            isClosed = GHC.Maybe.Nothing,
                                                                            openPeriod = GHC.Maybe.Nothing,
                                                                            options = options,
                                                                            question = question,
                                                                            replyMarkup = GHC.Maybe.Nothing,
                                                                            replyToMessageId = GHC.Maybe.Nothing,
                                                                            type' = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/sendPoll.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data ChatIdVariants =
   ChatIdInt GHC.Int.Int64
  | ChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatIdVariants
    where toJSON (ChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (ChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON ChatIdVariants
    where parseJSON val = case (ChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((ChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Defines the object schema located at @paths.\/sendPoll.POST.requestBody.content.application\/json.schema.properties.reply_markup.anyOf@ in the specification.
-- 
-- Additional interface options. A JSON-serialized object for an [inline keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#inline-keyboards-and-on-the-fly-updating), [custom reply keyboard](https:\\\/\\\/core.telegram.org\\\/bots\\\#keyboards), instructions to remove reply keyboard or to force a reply from the user.
data ReplyMarkup = ReplyMarkup {
  -- | force_reply: Shows reply interface to the user, as if they manually selected the bot\'s message and tapped \'Reply\'
  forceReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | inline_keyboard: Array of button rows, each represented by an Array of [InlineKeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#inlinekeyboardbutton) objects
  , inlineKeyboard :: (GHC.Maybe.Maybe ([[InlineKeyboardButton]]))
  -- | keyboard: Array of button rows, each represented by an Array of [KeyboardButton](https:\/\/core.telegram.org\/bots\/api\/\#keyboardbutton) objects
  , keyboard :: (GHC.Maybe.Maybe ([[KeyboardButton]]))
  -- | one_time_keyboard: *Optional*. Requests clients to hide the keyboard as soon as it\'s been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to *false*.
  , oneTimeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | remove_keyboard: Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use *one\\_time\\_keyboard* in [ReplyKeyboardMarkup](https:\/\/core.telegram.org\/bots\/api\/\#replykeyboardmarkup))
  , removeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | resize_keyboard: *Optional*. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to *false*, in which case the custom keyboard is always of the same height as the app\'s standard keyboard.
  , resizeKeyboard :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | selective: *Optional*. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are \@mentioned in the *text* of the [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) object; 2) if the bot\'s message is a reply (has *reply\\_to\\_message\\_id*), sender of the original message.  
  -- 
  -- *Example:* A user requests to change the bot\'s language, bot replies to the request with a keyboard to select the new language. Other users in the group don\'t see the keyboard.
  , selective :: (GHC.Maybe.Maybe GHC.Types.Bool)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ReplyMarkup
    where toJSON obj = Data.Aeson.Types.Internal.object ("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj : "inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj : "keyboard" Data.Aeson.Types.ToJSON..= keyboard obj : "one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj : "remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj : "resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj : "selective" Data.Aeson.Types.ToJSON..= selective obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("force_reply" Data.Aeson.Types.ToJSON..= forceReply obj) GHC.Base.<> (("inline_keyboard" Data.Aeson.Types.ToJSON..= inlineKeyboard obj) GHC.Base.<> (("keyboard" Data.Aeson.Types.ToJSON..= keyboard obj) GHC.Base.<> (("one_time_keyboard" Data.Aeson.Types.ToJSON..= oneTimeKeyboard obj) GHC.Base.<> (("remove_keyboard" Data.Aeson.Types.ToJSON..= removeKeyboard obj) GHC.Base.<> (("resize_keyboard" Data.Aeson.Types.ToJSON..= resizeKeyboard obj) GHC.Base.<> ("selective" Data.Aeson.Types.ToJSON..= selective obj)))))))
instance Data.Aeson.Types.FromJSON.FromJSON ReplyMarkup
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ReplyMarkup" (\obj -> ((((((GHC.Base.pure ReplyMarkup GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "force_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "one_time_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "remove_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "resize_keyboard")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "selective"))
-- | Create a new 'ReplyMarkup' with all required fields.
mkReplyMarkup :: ReplyMarkup
mkReplyMarkup = ReplyMarkup{forceReply = GHC.Maybe.Nothing,
                            inlineKeyboard = GHC.Maybe.Nothing,
                            keyboard = GHC.Maybe.Nothing,
                            oneTimeKeyboard = GHC.Maybe.Nothing,
                            removeKeyboard = GHC.Maybe.Nothing,
                            resizeKeyboard = GHC.Maybe.Nothing,
                            selective = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendPoll'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendPollResponseError' is used.
data PostSendPollResponse =
   PostSendPollResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendPollResponse200 PostSendPollResponseBody200 -- ^ 
  | PostSendPollResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendPoll.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendPollResponseBody200 = PostSendPollResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendPollResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendPollResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendPollResponseBody200" (\obj -> (GHC.Base.pure PostSendPollResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendPollResponseBody200' with all required fields.
mkPostSendPollResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostSendPollResponseBody200
mkPostSendPollResponseBody200 ok result = PostSendPollResponseBody200{ok = ok,
                                                                      result = result}
-- | > POST /sendPoll
-- 
-- The same as 'postSendPoll' but accepts an explicit configuration.
postSendPollWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendPollRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendPollResponse) -- ^ Monadic computation which returns the result of the operation
postSendPollWithConfiguration config
                              body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendPollResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendPollResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        PostSendPollResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendPollResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendPoll
-- 
-- The same as 'postSendPoll' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendPollRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendPollRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendPollRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendPoll
-- 
-- The same as 'postSendPoll' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendPollWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendPollRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendPollWithConfigurationRaw config
                                 body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
