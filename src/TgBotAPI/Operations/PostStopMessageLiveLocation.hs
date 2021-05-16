-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postStopMessageLiveLocation
module TgBotAPI.Operations.PostStopMessageLiveLocation where

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

-- | > POST /stopMessageLiveLocation
-- 
-- Use this method to stop updating a live location message before *live\\_period* expires. On success, if the message was sent by the bot, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned, otherwise *True* is returned.
postStopMessageLiveLocation :: forall m . TgBotAPI.Common.MonadHTTP m => PostStopMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostStopMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postStopMessageLiveLocation body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostStopMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostStopMessageLiveLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                    PostStopMessageLiveLocationResponseBody200)
                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostStopMessageLiveLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                      Error)
                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/stopMessageLiveLocation.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostStopMessageLiveLocationRequestBody = PostStopMessageLiveLocationRequestBody {
  -- | chat_id: Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postStopMessageLiveLocationRequestBodyChatId :: (GHC.Maybe.Maybe PostStopMessageLiveLocationRequestBodyChatIdVariants)
  -- | inline_message_id: Required if *chat\\_id* and *message\\_id* are not specified. Identifier of the inline message
  , postStopMessageLiveLocationRequestBodyInlineMessageId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message_id: Required if *inline\\_message\\_id* is not specified. Identifier of the message with live location to stop
  , postStopMessageLiveLocationRequestBodyMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , postStopMessageLiveLocationRequestBodyReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopMessageLiveLocationRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyChatId obj : "inline_message_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyInlineMessageId obj : "message_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyMessageId obj : "reply_markup" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyReplyMarkup obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyChatId obj) GHC.Base.<> (("inline_message_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyInlineMessageId obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyMessageId obj) GHC.Base.<> ("reply_markup" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationRequestBodyReplyMarkup obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostStopMessageLiveLocationRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostStopMessageLiveLocationRequestBody" (\obj -> (((GHC.Base.pure PostStopMessageLiveLocationRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "inline_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup"))
-- | Create a new 'PostStopMessageLiveLocationRequestBody' with all required fields.
mkPostStopMessageLiveLocationRequestBody :: PostStopMessageLiveLocationRequestBody
mkPostStopMessageLiveLocationRequestBody = PostStopMessageLiveLocationRequestBody{postStopMessageLiveLocationRequestBodyChatId = GHC.Maybe.Nothing,
                                                                                  postStopMessageLiveLocationRequestBodyInlineMessageId = GHC.Maybe.Nothing,
                                                                                  postStopMessageLiveLocationRequestBodyMessageId = GHC.Maybe.Nothing,
                                                                                  postStopMessageLiveLocationRequestBodyReplyMarkup = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/stopMessageLiveLocation.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Required if *inline\\_message\\_id* is not specified. Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostStopMessageLiveLocationRequestBodyChatIdVariants =
   PostStopMessageLiveLocationRequestBodyChatIdInt GHC.Types.Int
  | PostStopMessageLiveLocationRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopMessageLiveLocationRequestBodyChatIdVariants
    where toJSON (PostStopMessageLiveLocationRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostStopMessageLiveLocationRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostStopMessageLiveLocationRequestBodyChatIdVariants
    where parseJSON val = case (PostStopMessageLiveLocationRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostStopMessageLiveLocationRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postStopMessageLiveLocation'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostStopMessageLiveLocationResponseError' is used.
data PostStopMessageLiveLocationResponse =
   PostStopMessageLiveLocationResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostStopMessageLiveLocationResponse200 PostStopMessageLiveLocationResponseBody200 -- ^ 
  | PostStopMessageLiveLocationResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/stopMessageLiveLocation.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostStopMessageLiveLocationResponseBody200 = PostStopMessageLiveLocationResponseBody200 {
  -- | ok
  postStopMessageLiveLocationResponseBody200Ok :: GHC.Types.Bool
  -- | result
  , postStopMessageLiveLocationResponseBody200Result :: PostStopMessageLiveLocationResponseBody200ResultVariants
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopMessageLiveLocationResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postStopMessageLiveLocationResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostStopMessageLiveLocationResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostStopMessageLiveLocationResponseBody200" (\obj -> (GHC.Base.pure PostStopMessageLiveLocationResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostStopMessageLiveLocationResponseBody200' with all required fields.
mkPostStopMessageLiveLocationResponseBody200 :: GHC.Types.Bool -- ^ 'postStopMessageLiveLocationResponseBody200Ok'
  -> PostStopMessageLiveLocationResponseBody200ResultVariants -- ^ 'postStopMessageLiveLocationResponseBody200Result'
  -> PostStopMessageLiveLocationResponseBody200
mkPostStopMessageLiveLocationResponseBody200 postStopMessageLiveLocationResponseBody200Ok postStopMessageLiveLocationResponseBody200Result = PostStopMessageLiveLocationResponseBody200{postStopMessageLiveLocationResponseBody200Ok = postStopMessageLiveLocationResponseBody200Ok,
                                                                                                                                                                                        postStopMessageLiveLocationResponseBody200Result = postStopMessageLiveLocationResponseBody200Result}
-- | Defines the oneOf schema located at @paths.\/stopMessageLiveLocation.POST.responses.200.content.application\/json.schema.properties.result.anyOf@ in the specification.
-- 
-- 
data PostStopMessageLiveLocationResponseBody200ResultVariants =
   PostStopMessageLiveLocationResponseBody200ResultMessage Message
  | PostStopMessageLiveLocationResponseBody200ResultBool GHC.Types.Bool
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopMessageLiveLocationResponseBody200ResultVariants
    where toJSON (PostStopMessageLiveLocationResponseBody200ResultMessage a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostStopMessageLiveLocationResponseBody200ResultBool a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostStopMessageLiveLocationResponseBody200ResultVariants
    where parseJSON val = case (PostStopMessageLiveLocationResponseBody200ResultMessage Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostStopMessageLiveLocationResponseBody200ResultBool Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | > POST /stopMessageLiveLocation
-- 
-- The same as 'postStopMessageLiveLocation' but accepts an explicit configuration.
postStopMessageLiveLocationWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostStopMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostStopMessageLiveLocationResponse) -- ^ Monadic computation which returns the result of the operation
postStopMessageLiveLocationWithConfiguration config
                                             body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostStopMessageLiveLocationResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostStopMessageLiveLocationResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                     PostStopMessageLiveLocationResponseBody200)
                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostStopMessageLiveLocationResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /stopMessageLiveLocation
-- 
-- The same as 'postStopMessageLiveLocation' but returns the raw 'Data.ByteString.Char8.ByteString'.
postStopMessageLiveLocationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostStopMessageLiveLocationRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postStopMessageLiveLocationRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /stopMessageLiveLocation
-- 
-- The same as 'postStopMessageLiveLocation' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postStopMessageLiveLocationWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostStopMessageLiveLocationRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postStopMessageLiveLocationWithConfigurationRaw config
                                                body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopMessageLiveLocation") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)