-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postStopPoll
module TgBotAPI.Operations.PostStopPoll where

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

-- | > POST /stopPoll
-- 
-- Use this method to stop a poll which was sent by the bot. On success, the stopped [Poll](https:\/\/core.telegram.org\/bots\/api\/\#poll) with the final results is returned.
postStopPoll :: forall m . TgBotAPI.Common.MonadHTTP m => PostStopPollRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostStopPollResponse) -- ^ Monadic computation which returns the result of the operation
postStopPoll body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostStopPollResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostStopPollResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                       PostStopPollResponseBody200)
                                                                                                                                                           | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostStopPollResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                         Error)
                                                                                                                                                           | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/stopPoll.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostStopPollRequestBody = PostStopPollRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  chatId :: ChatIdVariants
  -- | message_id: Identifier of the original message with the poll
  , messageId :: GHC.Int.Int64
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , replyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopPollRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "message_id" Data.Aeson.Types.ToJSON..= messageId obj : "reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= messageId obj) GHC.Base.<> ("reply_markup" Data.Aeson.Types.ToJSON..= replyMarkup obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostStopPollRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostStopPollRequestBody" (\obj -> ((GHC.Base.pure PostStopPollRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup"))
-- | Create a new 'PostStopPollRequestBody' with all required fields.
mkPostStopPollRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> GHC.Int.Int64 -- ^ 'messageId'
  -> PostStopPollRequestBody
mkPostStopPollRequestBody chatId messageId = PostStopPollRequestBody{chatId = chatId,
                                                                     messageId = messageId,
                                                                     replyMarkup = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/stopPoll.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
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
-- | Represents a response of the operation 'postStopPoll'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostStopPollResponseError' is used.
data PostStopPollResponse =
   PostStopPollResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostStopPollResponse200 PostStopPollResponseBody200 -- ^ 
  | PostStopPollResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/stopPoll.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostStopPollResponseBody200 = PostStopPollResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object contains information about a poll.
  , result :: Poll
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostStopPollResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostStopPollResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostStopPollResponseBody200" (\obj -> (GHC.Base.pure PostStopPollResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostStopPollResponseBody200' with all required fields.
mkPostStopPollResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Poll -- ^ 'result'
  -> PostStopPollResponseBody200
mkPostStopPollResponseBody200 ok result = PostStopPollResponseBody200{ok = ok,
                                                                      result = result}
-- | > POST /stopPoll
-- 
-- The same as 'postStopPoll' but accepts an explicit configuration.
postStopPollWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostStopPollRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostStopPollResponse) -- ^ Monadic computation which returns the result of the operation
postStopPollWithConfiguration config
                              body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostStopPollResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostStopPollResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                        PostStopPollResponseBody200)
                                                                                                                                                                            | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostStopPollResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                          Error)
                                                                                                                                                                            | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /stopPoll
-- 
-- The same as 'postStopPoll' but returns the raw 'Data.ByteString.Char8.ByteString'.
postStopPollRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostStopPollRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postStopPollRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /stopPoll
-- 
-- The same as 'postStopPoll' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postStopPollWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostStopPollRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postStopPollWithConfigurationRaw config
                                 body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/stopPoll") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
