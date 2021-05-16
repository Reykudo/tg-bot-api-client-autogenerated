-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postSendGame
module TgBotAPI.Operations.PostSendGame where

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

-- | > POST /sendGame
-- 
-- Use this method to send a game. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postSendGame :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendGameRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendGameResponse) -- ^ Monadic computation which returns the result of the operation
postSendGame body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendGameResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendGameResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       PostSendGameResponseBody200)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendGameResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendGame") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/sendGame.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendGameRequestBody = PostSendGameRequestBody {
  -- | allow_sending_without_reply: Pass *True*, if the message should be sent even if the specified replied-to message is not found
  postSendGameRequestBodyAllowSendingWithoutReply :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat_id: Unique identifier for the target chat
  , postSendGameRequestBodyChatId :: GHC.Types.Int
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , postSendGameRequestBodyDisableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | game_short_name: Short name of the game, serves as the unique identifier for the game. Set up your games via [Botfather](https:\/\/t.me\/botfather).
  , postSendGameRequestBodyGameShortName :: Data.Text.Internal.Text
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , postSendGameRequestBodyReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | reply_to_message_id: If the message is a reply, ID of the original message
  , postSendGameRequestBodyReplyToMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendGameRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyAllowSendingWithoutReply obj : "chat_id" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyChatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyDisableNotification obj : "game_short_name" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyGameShortName obj : "reply_markup" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyReplyMarkup obj : "reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyReplyToMessageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("allow_sending_without_reply" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyAllowSendingWithoutReply obj) GHC.Base.<> (("chat_id" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyChatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyDisableNotification obj) GHC.Base.<> (("game_short_name" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyGameShortName obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyReplyMarkup obj) GHC.Base.<> ("reply_to_message_id" Data.Aeson.Types.ToJSON..= postSendGameRequestBodyReplyToMessageId obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendGameRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendGameRequestBody" (\obj -> (((((GHC.Base.pure PostSendGameRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "allow_sending_without_reply")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "game_short_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message_id"))
-- | Create a new 'PostSendGameRequestBody' with all required fields.
mkPostSendGameRequestBody :: GHC.Types.Int -- ^ 'postSendGameRequestBodyChatId'
  -> Data.Text.Internal.Text -- ^ 'postSendGameRequestBodyGameShortName'
  -> PostSendGameRequestBody
mkPostSendGameRequestBody postSendGameRequestBodyChatId postSendGameRequestBodyGameShortName = PostSendGameRequestBody{postSendGameRequestBodyAllowSendingWithoutReply = GHC.Maybe.Nothing,
                                                                                                                       postSendGameRequestBodyChatId = postSendGameRequestBodyChatId,
                                                                                                                       postSendGameRequestBodyDisableNotification = GHC.Maybe.Nothing,
                                                                                                                       postSendGameRequestBodyGameShortName = postSendGameRequestBodyGameShortName,
                                                                                                                       postSendGameRequestBodyReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                       postSendGameRequestBodyReplyToMessageId = GHC.Maybe.Nothing}
-- | Represents a response of the operation 'postSendGame'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendGameResponseError' is used.
data PostSendGameResponse =
   PostSendGameResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendGameResponse200 PostSendGameResponseBody200 -- ^ 
  | PostSendGameResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendGame.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendGameResponseBody200 = PostSendGameResponseBody200 {
  -- | ok
  postSendGameResponseBody200Ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , postSendGameResponseBody200Result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendGameResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postSendGameResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postSendGameResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postSendGameResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postSendGameResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendGameResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendGameResponseBody200" (\obj -> (GHC.Base.pure PostSendGameResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendGameResponseBody200' with all required fields.
mkPostSendGameResponseBody200 :: GHC.Types.Bool -- ^ 'postSendGameResponseBody200Ok'
  -> Message -- ^ 'postSendGameResponseBody200Result'
  -> PostSendGameResponseBody200
mkPostSendGameResponseBody200 postSendGameResponseBody200Ok postSendGameResponseBody200Result = PostSendGameResponseBody200{postSendGameResponseBody200Ok = postSendGameResponseBody200Ok,
                                                                                                                            postSendGameResponseBody200Result = postSendGameResponseBody200Result}
-- | > POST /sendGame
-- 
-- The same as 'postSendGame' but accepts an explicit configuration.
postSendGameWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendGameRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSendGameResponse) -- ^ Monadic computation which returns the result of the operation
postSendGameWithConfiguration config
                              body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendGameResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendGameResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        PostSendGameResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendGameResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendGame") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendGame
-- 
-- The same as 'postSendGame' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendGameRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSendGameRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendGameRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendGame") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /sendGame
-- 
-- The same as 'postSendGame' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendGameWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSendGameRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendGameWithConfigurationRaw config
                                 body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendGame") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)