-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postSetChatAdministratorCustomTitle
module TgBotAPI.Operations.PostSetChatAdministratorCustomTitle where

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

-- | > POST /setChatAdministratorCustomTitle
-- 
-- Use this method to set a custom title for an administrator in a supergroup promoted by the bot. Returns *True* on success.
postSetChatAdministratorCustomTitle :: forall m . TgBotAPI.Common.MonadHTTP m => PostSetChatAdministratorCustomTitleRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostSetChatAdministratorCustomTitleResponse) -- ^ Monadic computation which returns the result of the operation
postSetChatAdministratorCustomTitle body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostSetChatAdministratorCustomTitleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetChatAdministratorCustomTitleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                            PostSetChatAdministratorCustomTitleResponseBody200)
                                                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetChatAdministratorCustomTitleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setChatAdministratorCustomTitle") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/setChatAdministratorCustomTitle.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSetChatAdministratorCustomTitleRequestBody = PostSetChatAdministratorCustomTitleRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
  chatId :: ChatIdVariants
  -- | custom_title: New custom title for the administrator; 0-16 characters, emoji are not allowed
  , customTitle :: Data.Text.Internal.Text
  -- | user_id: Unique identifier of the target user
  , userId :: GHC.Types.Int
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSetChatAdministratorCustomTitleRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "custom_title" Data.Aeson.Types.ToJSON..= customTitle obj : "user_id" Data.Aeson.Types.ToJSON..= userId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("custom_title" Data.Aeson.Types.ToJSON..= customTitle obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= userId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetChatAdministratorCustomTitleRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetChatAdministratorCustomTitleRequestBody" (\obj -> ((GHC.Base.pure PostSetChatAdministratorCustomTitleRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "custom_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostSetChatAdministratorCustomTitleRequestBody' with all required fields.
mkPostSetChatAdministratorCustomTitleRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> Data.Text.Internal.Text -- ^ 'customTitle'
  -> GHC.Types.Int -- ^ 'userId'
  -> PostSetChatAdministratorCustomTitleRequestBody
mkPostSetChatAdministratorCustomTitleRequestBody chatId customTitle userId = PostSetChatAdministratorCustomTitleRequestBody{chatId = chatId,
                                                                                                                            customTitle = customTitle,
                                                                                                                            userId = userId}
-- | Defines the oneOf schema located at @paths.\/setChatAdministratorCustomTitle.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target supergroup (in the format \`\@supergroupusername\`)
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
-- | Represents a response of the operation 'postSetChatAdministratorCustomTitle'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostSetChatAdministratorCustomTitleResponseError' is used.
data PostSetChatAdministratorCustomTitleResponse =
   PostSetChatAdministratorCustomTitleResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostSetChatAdministratorCustomTitleResponse200 PostSetChatAdministratorCustomTitleResponseBody200 -- ^ 
  | PostSetChatAdministratorCustomTitleResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/setChatAdministratorCustomTitle.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostSetChatAdministratorCustomTitleResponseBody200 = PostSetChatAdministratorCustomTitleResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostSetChatAdministratorCustomTitleResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostSetChatAdministratorCustomTitleResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostSetChatAdministratorCustomTitleResponseBody200" (\obj -> (GHC.Base.pure PostSetChatAdministratorCustomTitleResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostSetChatAdministratorCustomTitleResponseBody200' with all required fields.
mkPostSetChatAdministratorCustomTitleResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> GHC.Types.Bool -- ^ 'result'
  -> PostSetChatAdministratorCustomTitleResponseBody200
mkPostSetChatAdministratorCustomTitleResponseBody200 ok result = PostSetChatAdministratorCustomTitleResponseBody200{ok = ok,
                                                                                                                    result = result}
-- | > POST /setChatAdministratorCustomTitle
-- 
-- The same as 'postSetChatAdministratorCustomTitle' but accepts an explicit configuration.
postSetChatAdministratorCustomTitleWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSetChatAdministratorCustomTitleRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostSetChatAdministratorCustomTitleResponse) -- ^ Monadic computation which returns the result of the operation
postSetChatAdministratorCustomTitleWithConfiguration config
                                                     body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostSetChatAdministratorCustomTitleResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostSetChatAdministratorCustomTitleResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             PostSetChatAdministratorCustomTitleResponseBody200)
                                                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostSetChatAdministratorCustomTitleResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setChatAdministratorCustomTitle") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /setChatAdministratorCustomTitle
-- 
-- The same as 'postSetChatAdministratorCustomTitle' but returns the raw 'Data.ByteString.Char8.ByteString'.
postSetChatAdministratorCustomTitleRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostSetChatAdministratorCustomTitleRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSetChatAdministratorCustomTitleRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setChatAdministratorCustomTitle") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /setChatAdministratorCustomTitle
-- 
-- The same as 'postSetChatAdministratorCustomTitle' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postSetChatAdministratorCustomTitleWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostSetChatAdministratorCustomTitleRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postSetChatAdministratorCustomTitleWithConfigurationRaw config
                                                        body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/setChatAdministratorCustomTitle") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
