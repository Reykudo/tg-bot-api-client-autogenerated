-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExplicitForAll #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the different functions to run the operation postEditChatInviteLink
module TgBotAPI.Operations.PostEditChatInviteLink where

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

-- | > POST /editChatInviteLink
-- 
-- Use this method to edit a non-primary invite link created by the bot. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns the edited invite link as a [ChatInviteLink](https:\/\/core.telegram.org\/bots\/api\/\#chatinvitelink) object.
postEditChatInviteLink :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditChatInviteLinkRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response PostEditChatInviteLinkResponse) -- ^ Monadic computation which returns the result of the operation
postEditChatInviteLink body = GHC.Base.fmap (\response_0 -> GHC.Base.fmap (Data.Either.either PostEditChatInviteLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_1 -> Network.HTTP.Types.Status.statusCode status_1 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditChatInviteLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                     PostEditChatInviteLinkResponseBody200)
                                                                                                                                                                               | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditChatInviteLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                       Error)
                                                                                                                                                                               | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_0) response_0) (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | Defines the object schema located at @paths.\/editChatInviteLink.POST.requestBody.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditChatInviteLinkRequestBody = PostEditChatInviteLinkRequestBody {
  -- | chat_id: Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
  postEditChatInviteLinkRequestBodyChatId :: PostEditChatInviteLinkRequestBodyChatIdVariants
  -- | expire_date: Point in time (Unix timestamp) when the link will expire
  , postEditChatInviteLinkRequestBodyExpireDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | invite_link: The invite link to edit
  , postEditChatInviteLinkRequestBodyInviteLink :: Data.Text.Internal.Text
  -- | member_limit: Maximum number of users that can be members of the chat simultaneously after joining the chat via this invite link; 1-99999
  , postEditChatInviteLinkRequestBodyMemberLimit :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditChatInviteLinkRequestBody
    where toJSON obj = Data.Aeson.Types.Internal.object ("chat_id" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyChatId obj : "expire_date" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyExpireDate obj : "invite_link" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyInviteLink obj : "member_limit" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyMemberLimit obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("chat_id" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyChatId obj) GHC.Base.<> (("expire_date" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyExpireDate obj) GHC.Base.<> (("invite_link" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyInviteLink obj) GHC.Base.<> ("member_limit" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkRequestBodyMemberLimit obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditChatInviteLinkRequestBody
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditChatInviteLinkRequestBody" (\obj -> (((GHC.Base.pure PostEditChatInviteLinkRequestBody GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "expire_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "invite_link")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "member_limit"))
-- | Create a new 'PostEditChatInviteLinkRequestBody' with all required fields.
mkPostEditChatInviteLinkRequestBody :: PostEditChatInviteLinkRequestBodyChatIdVariants -- ^ 'postEditChatInviteLinkRequestBodyChatId'
  -> Data.Text.Internal.Text -- ^ 'postEditChatInviteLinkRequestBodyInviteLink'
  -> PostEditChatInviteLinkRequestBody
mkPostEditChatInviteLinkRequestBody postEditChatInviteLinkRequestBodyChatId postEditChatInviteLinkRequestBodyInviteLink = PostEditChatInviteLinkRequestBody{postEditChatInviteLinkRequestBodyChatId = postEditChatInviteLinkRequestBodyChatId,
                                                                                                                                                            postEditChatInviteLinkRequestBodyExpireDate = GHC.Maybe.Nothing,
                                                                                                                                                            postEditChatInviteLinkRequestBodyInviteLink = postEditChatInviteLinkRequestBodyInviteLink,
                                                                                                                                                            postEditChatInviteLinkRequestBodyMemberLimit = GHC.Maybe.Nothing}
-- | Defines the oneOf schema located at @paths.\/editChatInviteLink.POST.requestBody.content.application\/json.schema.properties.chat_id.anyOf@ in the specification.
-- 
-- Unique identifier for the target chat or username of the target channel (in the format \`\@channelusername\`)
data PostEditChatInviteLinkRequestBodyChatIdVariants =
   PostEditChatInviteLinkRequestBodyChatIdInt GHC.Types.Int
  | PostEditChatInviteLinkRequestBodyChatIdText Data.Text.Internal.Text
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditChatInviteLinkRequestBodyChatIdVariants
    where toJSON (PostEditChatInviteLinkRequestBodyChatIdInt a) = Data.Aeson.Types.ToJSON.toJSON a
          toJSON (PostEditChatInviteLinkRequestBodyChatIdText a) = Data.Aeson.Types.ToJSON.toJSON a
instance Data.Aeson.Types.FromJSON.FromJSON PostEditChatInviteLinkRequestBodyChatIdVariants
    where parseJSON val = case (PostEditChatInviteLinkRequestBodyChatIdInt Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> ((PostEditChatInviteLinkRequestBodyChatIdText Data.Functor.<$> Data.Aeson.Types.FromJSON.fromJSON val) GHC.Base.<|> Data.Aeson.Types.Internal.Error "No variant matched") of
                              Data.Aeson.Types.Internal.Success a -> GHC.Base.pure a
                              Data.Aeson.Types.Internal.Error a -> Control.Monad.Fail.fail a
-- | Represents a response of the operation 'postEditChatInviteLink'.
-- 
-- The response constructor is chosen by the status code of the response. If no case matches (no specific case for the response code, no range case, no default case), 'PostEditChatInviteLinkResponseError' is used.
data PostEditChatInviteLinkResponse =
   PostEditChatInviteLinkResponseError GHC.Base.String -- ^ Means either no matching case available or a parse error
  | PostEditChatInviteLinkResponse200 PostEditChatInviteLinkResponseBody200 -- ^ 
  | PostEditChatInviteLinkResponseDefault Error -- ^ 
  deriving (GHC.Show.Show, GHC.Classes.Eq)
-- | Defines the object schema located at @paths.\/editChatInviteLink.POST.responses.200.content.application\/json.schema@ in the specification.
-- 
-- 
data PostEditChatInviteLinkResponseBody200 = PostEditChatInviteLinkResponseBody200 {
  -- | ok
  postEditChatInviteLinkResponseBody200Ok :: GHC.Types.Bool
  -- | result: Represents an invite link for a chat.
  , postEditChatInviteLinkResponseBody200Result :: ChatInviteLink
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PostEditChatInviteLinkResponseBody200
    where toJSON obj = Data.Aeson.Types.Internal.object ("ok" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkResponseBody200Ok obj : "result" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkResponseBody200Result obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("ok" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkResponseBody200Ok obj) GHC.Base.<> ("result" Data.Aeson.Types.ToJSON..= postEditChatInviteLinkResponseBody200Result obj))
instance Data.Aeson.Types.FromJSON.FromJSON PostEditChatInviteLinkResponseBody200
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PostEditChatInviteLinkResponseBody200" (\obj -> (GHC.Base.pure PostEditChatInviteLinkResponseBody200 GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "result"))
-- | Create a new 'PostEditChatInviteLinkResponseBody200' with all required fields.
mkPostEditChatInviteLinkResponseBody200 :: GHC.Types.Bool -- ^ 'postEditChatInviteLinkResponseBody200Ok'
  -> ChatInviteLink -- ^ 'postEditChatInviteLinkResponseBody200Result'
  -> PostEditChatInviteLinkResponseBody200
mkPostEditChatInviteLinkResponseBody200 postEditChatInviteLinkResponseBody200Ok postEditChatInviteLinkResponseBody200Result = PostEditChatInviteLinkResponseBody200{postEditChatInviteLinkResponseBody200Ok = postEditChatInviteLinkResponseBody200Ok,
                                                                                                                                                                    postEditChatInviteLinkResponseBody200Result = postEditChatInviteLinkResponseBody200Result}
-- | > POST /editChatInviteLink
-- 
-- The same as 'postEditChatInviteLink' but accepts an explicit configuration.
postEditChatInviteLinkWithConfiguration :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditChatInviteLinkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response PostEditChatInviteLinkResponse) -- ^ Monadic computation which returns the result of the operation
postEditChatInviteLinkWithConfiguration config
                                        body = GHC.Base.fmap (\response_2 -> GHC.Base.fmap (Data.Either.either PostEditChatInviteLinkResponseError GHC.Base.id GHC.Base.. (\response body -> if | (\status_3 -> Network.HTTP.Types.Status.statusCode status_3 GHC.Classes.== 200) (Network.HTTP.Client.Types.responseStatus response) -> PostEditChatInviteLinkResponse200 Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                                                                      PostEditChatInviteLinkResponseBody200)
                                                                                                                                                                                                | GHC.Base.const GHC.Types.True (Network.HTTP.Client.Types.responseStatus response) -> PostEditChatInviteLinkResponseDefault Data.Functor.<$> (Data.Aeson.eitherDecodeStrict body :: Data.Either.Either GHC.Base.String
                                                                                                                                                                                                                                                                                                                                                                                                        Error)
                                                                                                                                                                                                | GHC.Base.otherwise -> Data.Either.Left "Missing default response type") response_2) response_2) (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editChatInviteLink
-- 
-- The same as 'postEditChatInviteLink' but returns the raw 'Data.ByteString.Char8.ByteString'.
postEditChatInviteLinkRaw :: forall m . TgBotAPI.Common.MonadHTTP m => PostEditChatInviteLinkRequestBody -- ^ The request body to send
  -> TgBotAPI.Common.StripeT m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditChatInviteLinkRaw body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfigurationM (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)
-- | > POST /editChatInviteLink
-- 
-- The same as 'postEditChatInviteLink' but accepts an explicit configuration and returns the raw 'Data.ByteString.Char8.ByteString'.
postEditChatInviteLinkWithConfigurationRaw :: forall m . TgBotAPI.Common.MonadHTTP m => TgBotAPI.Common.Configuration -- ^ The configuration to use in the request
  -> PostEditChatInviteLinkRequestBody -- ^ The request body to send
  -> m (Network.HTTP.Client.Types.Response Data.ByteString.Internal.ByteString) -- ^ Monadic computation which returns the result of the operation
postEditChatInviteLinkWithConfigurationRaw config
                                           body = GHC.Base.id (TgBotAPI.Common.doBodyCallWithConfiguration config (Data.Text.toUpper GHC.Base.$ Data.Text.pack "POST") (Data.Text.pack "/editChatInviteLink") GHC.Base.mempty (GHC.Maybe.Just body) TgBotAPI.Common.RequestBodyEncodingJSON)