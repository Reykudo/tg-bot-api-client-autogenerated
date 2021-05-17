-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postForwardMessage
module TgBotAPI.Operations.PostForwardMessage where

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

-- | > POST /forwardMessage
-- 
-- Use this method to forward messages of any kind. Service messages can\'t be forwarded. On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned.
postForwardMessage :: forall m . TgBotAPI.Common.MonadHTTP m => PostForwardMessageRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostForwardMessageResponse) -- ^ Monadic computation which returns the result of the operation
postForwardMessage body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostForwardMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostForwardMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                         PostForwardMessageResponseBody200)
                                                                                                                                                                       | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostForwardMessageResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                           Error)
                                                                                                                                                                       | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/forwardMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/forwardMessage.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostForwardMessageRequestBody = PostForwardMessageRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  chatId :: ChatIdVariants
  -- | disable_notification: Sends the message [silently](https:\/\/telegram.org\/blog\/channels-2-0\#silent-messages). Users will receive a notification with no sound.
  , disableNotification :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | from_chat_id: Unique identifier for the chat where the original message was sent (or channel username in the format \`\@channelusername\`)
  , fromChatId :: FromChatIdVariants
  -- | message_id: Message identifier in the chat specified in *from\\_chat\\_id*
  , messageId :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostForwardMessageRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj : "from_chat_id" Data.Aeson.Types.ToJSON..= fromChatId obj : "message_id" Data.Aeson.Types.ToJSON..= messageId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("disable_notification" Data.Aeson.Types.ToJSON..= disableNotification obj) GHC.Base.<> (("from_chat_id" Data.Aeson.Types.ToJSON..= fromChatId obj) GHC.Base.<> ("message_id" Data.Aeson.Types.ToJSON..= messageId obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostForwardMessageRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostForwardMessageRequestBody" (\obj -> (((GHC.Base.pure PostForwardMessageRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "disable_notification")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "from_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id"))
-- | Create a new 'PostForwardMessageRequestBody' with all required fields.
mkPostForwardMessageRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> FromChatIdVariants -- ^ 'fromChatId'
  -> GHC.Int.Int64 -- ^ 'messageId'
  -> PostForwardMessageRequestBody
mkPostForwardMessageRequestBody chatId fromChatId messageId = PostForwardMessageRequestBody{chatId = chatId,
                                                                                            disableNotification = GHC.Maybe.Nothing,
                                                                                            fromChatId = fromChatId,
                                                                                            messageId = messageId}
-- | Defines the oneOf schema located at @paths.\/forwardMessage.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
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
-- | Defines the oneOf schema located at @paths.\/forwardMessage.POST.requestBody.content.application\/json.schema.properties.from_chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the chat where the original message was sent (or channel username in the format \`\@channelusername\`)
data FromChatIdVariants =
   FromChatIdInt GHC.Int.Int64
  | FromChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON FromChatIdVariants
    where toJSON (FromChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (FromChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON FromChatIdVariants
    where parseJSON val = case (FromChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((FromChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postForwardMessage'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostForwardMessageResponseError' is used.
data PostForwardMessageResponse =
   PostForwardMessageResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostForwardMessageResponse200 PostForwardMessageResponseBody200 -- ^ 
  | PostForwardMessageResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/forwardMessage.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostForwardMessageResponseBody200 = PostForwardMessageResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostForwardMessageResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostForwardMessageResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostForwardMessageResponseBody200" (\obj -> (GHC.Base.pure PostForwardMessageResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostForwardMessageResponseBody200' with all required fields.
mkPostForwardMessageResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostForwardMessageResponseBody200
mkPostForwardMessageResponseBody200 ok result = PostForwardMessageResponseBody200{ok = ok,
                                                                                  result = result}
-- | > POST /forwardMessage
-- 
-- The same as 'postForwardMessage' but accepts an explicit configuration.
postForwardMessageWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostForwardMessageRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostForwardMessageResponse) -- ^ Monadic computation which returns the result of the operation
postForwardMessageWithConfiguration config
                                    body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostForwardMessageResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostForwardMessageResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                          PostForwardMessageResponseBody200)
                                                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostForwardMessageResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                            Error)
                                                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/forwardMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /forwardMessage
-- 
-- The same as 'postForwardMessage' but returns the raw 'Data.ByteString.Char8.ByteString'.
postForwardMessageRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostForwardMessageRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postForwardMessageRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/forwardMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /forwardMessage
-- 
-- The same as 'postForwardMessage' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postForwardMessageWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostForwardMessageRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postForwardMessageWithConfigurationRaw config
                                       body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/forwardMessage") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
