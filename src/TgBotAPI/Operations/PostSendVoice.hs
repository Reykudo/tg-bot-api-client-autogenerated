-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSendVoice
module TgBotAPI.Operations.PostSendVoice where

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

-- | > POST /sendVoice
-- 
-- Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .OGG file encoded with OPUS (other formats may be sent as [Audio](https:\/\/core.telegram.org\/bots\/api\/\#audio) or [Document](https:\/\/core.telegram.org\/bots\/api\/\#document)). On success, the sent [Message](https:\/\/core.telegram.org\/bots\/api\/\#message) is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.
postSendVoice :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSendVoiceResponse) -- ^ Monadic computation which returns the result of the operation
postSendVoice = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSendVoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendVoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                     PostSendVoiceResponseBody200)
                                                                                                                                                        | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendVoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                        | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVoice") GHC.Base.mempty)
-- | Represents a response of the operation 'postSendVoice'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSendVoiceResponseError' is used.
data PostSendVoiceResponse =
   PostSendVoiceResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSendVoiceResponse200 PostSendVoiceResponseBody200 -- ^ 
  | PostSendVoiceResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/sendVoice.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSendVoiceResponseBody200 = PostSendVoiceResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result: This object represents a message.
  , result :: Message
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSendVoiceResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSendVoiceResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSendVoiceResponseBody200" (\obj -> (GHC.Base.pure PostSendVoiceResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSendVoiceResponseBody200' with all required fields.
mkPostSendVoiceResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> Message -- ^ 'result'
  -> PostSendVoiceResponseBody200
mkPostSendVoiceResponseBody200 ok result = PostSendVoiceResponseBody200{ok = ok,
                                                                        result = result}
-- | > POST /sendVoice
-- 
-- The same as 'postSendVoice' but accepts an explicit configuration.
postSendVoiceWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response PostSendVoiceResponse) -- ^ Monadic computation which returns the result of the operation
postSendVoiceWithConfiguration config = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSendVoiceResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSendVoiceResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                             PostSendVoiceResponseBody200)
                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSendVoiceResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVoice") GHC.Base.mempty)
-- | > POST /sendVoice
-- 
-- The same as 'postSendVoice' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSendVoiceRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendVoiceRaw = GHC.Base.id (TgBotAPI.Common.doCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVoice") GHC.Base.mempty)
-- | > POST /sendVoice
-- 
-- The same as 'postSendVoice' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSendVoiceWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSendVoiceWithConfigurationRaw config = GHC.Base.id (TgBotAPI.Common.doCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/sendVoice") GHC.Base.mempty)
