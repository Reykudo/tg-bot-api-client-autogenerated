-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the different functions to run the operation postUnbanChatMember
module TgBotAPI.Operations.PostUnbanChatMember where

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

-- | > POST /unbanChatMember
-- 
-- Use this method to unban a previously kicked user in a supergroup or channel. The user will **not** return to the group or channel automatically, but will be able to join via link, etc. The bot must be an administrator for this to work. By default, this method guarantees that after the call the user is not a member of the chat, but will be able to join it. So if the user is a member of the chat they will also be **removed** from the chat. If you don\'t want this, use the parameter *only\\_if\\_banned*. Returns *True* on success.
postUnbanChatMember :: forall m . TgBotAPI.Common.MonadHTTP m => PostUnbanChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostUnbanChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postUnbanChatMember body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostUnbanChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                            PostUnbanChatMemberResponseBody200)
                                                                                                                                                                         | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                              Error)
                                                                                                                                                                         | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unbanChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/unbanChatMember.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnbanChatMemberRequestBody = PostUnbanChatMemberRequestBody {
  -- | chat_id: Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@username\`)
  chatId :: ChatIdVariants
  -- | only_if_banned: Do nothing if the user is not banned
  , onlyIfBanned :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | user_id: Unique identifier of the target user
  , userId :: GHC.Int.Int64
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnbanChatMemberRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= chatId obj : "only_if_banned" Data.Aeson.Types.ToJSON..= onlyIfBanned obj : "user_id" Data.Aeson.Types.ToJSON..= userId obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= chatId obj) GHC.Base.<> (("only_if_banned" Data.Aeson.Types.ToJSON..= onlyIfBanned obj) GHC.Base.<> ("user_id" Data.Aeson.Types.ToJSON..= userId obj)))
instance Data.Aeson.Types.FromJSON.FromJSON PostUnbanChatMemberRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnbanChatMemberRequestBody" (\obj -> ((GHC.Base.pure PostUnbanChatMemberRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "only_if_banned")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user_id"))
-- | Create a new 'PostUnbanChatMemberRequestBody' with all required fields.
mkPostUnbanChatMemberRequestBody :: ChatIdVariants -- ^ 'chatId'
  -> GHC.Int.Int64 -- ^ 'userId'
  -> PostUnbanChatMemberRequestBody
mkPostUnbanChatMemberRequestBody chatId userId = PostUnbanChatMemberRequestBody{chatId = chatId,
                                                                                onlyIfBanned = GHC.Maybe.Nothing,
                                                                                userId = userId}
-- | Defines the oneOf schema located at @paths.\/unbanChatMember.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target group or username of the target supergroup or channel (in the format \`\@username\`)
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
-- | Represents a response of the operation 'postUnbanChatMember'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostUnbanChatMemberResponseError' is used.
data PostUnbanChatMemberResponse =
   PostUnbanChatMemberResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostUnbanChatMemberResponse200 PostUnbanChatMemberResponseBody200 -- ^ 
  | PostUnbanChatMemberResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/unbanChatMember.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostUnbanChatMemberResponseBody200 = PostUnbanChatMemberResponseBody200 {
  -- | ok
  ok :: GHC.Types.Bool
  -- | result
  , result :: GHC.Types.Bool
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostUnbanChatMemberResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= ok obj : "result" Data.Aeson.Types.ToJSON..= result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostUnbanChatMemberResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostUnbanChatMemberResponseBody200" (\obj -> (GHC.Base.pure PostUnbanChatMemberResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostUnbanChatMemberResponseBody200' with all required fields.
mkPostUnbanChatMemberResponseBody200 :: GHC.Types.Bool -- ^ 'ok'
  -> GHC.Types.Bool -- ^ 'result'
  -> PostUnbanChatMemberResponseBody200
mkPostUnbanChatMemberResponseBody200 ok result = PostUnbanChatMemberResponseBody200{ok = ok,
                                                                                    result = result}
-- | > POST /unbanChatMember
-- 
-- The same as 'postUnbanChatMember' but accepts an explicit configuration.
postUnbanChatMemberWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostUnbanChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostUnbanChatMemberResponse) -- ^ Monadic computation which returns the result of the operation
postUnbanChatMemberWithConfiguration config
                                     body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostUnbanChatMemberResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatMemberResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                             PostUnbanChatMemberResponseBody200)
                                                                                                                                                                                          | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostUnbanChatMemberResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                               Error)
                                                                                                                                                                                          | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unbanChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /unbanChatMember
-- 
-- The same as 'postUnbanChatMember' but returns the raw 'Data.ByteString.Char8.ByteString'.
postUnbanChatMemberRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostUnbanChatMemberRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postUnbanChatMemberRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unbanChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /unbanChatMember
-- 
-- The same as 'postUnbanChatMember' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postUnbanChatMemberWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostUnbanChatMemberRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postUnbanChatMemberWithConfigurationRaw config
                                        body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/unbanChatMember") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
