-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema ChatMember
module TgBotAPI.Types.ChatMember where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified TgBotAPI.Common
import TgBotAPI.TypeAlias
import  {-# SOURCE #-}  TgBotAPI.Types.User (User)

-- | Defines the object schema located at @components.schemas.ChatMember@ in the specification.
-- 
-- This object contains information about one member of a chat.
data ChatMember = ChatMember {
  -- | can_add_web_page_previews: *Optional*. Restricted only. True, if the user is allowed to add web page previews to their messages
  canAddWebPagePreviews :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_be_edited: *Optional*. Administrators only. True, if the bot is allowed to edit administrator privileges of that user
  , canBeEdited :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_change_info: *Optional*. Administrators and restricted only. True, if the user is allowed to change the chat title, photo and other settings
  , canChangeInfo :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_delete_messages: *Optional*. Administrators only. True, if the administrator can delete messages of other users
  , canDeleteMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_edit_messages: *Optional*. Administrators only. True, if the administrator can edit messages of other users and can pin messages; channels only
  , canEditMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_invite_users: *Optional*. Administrators and restricted only. True, if the user is allowed to invite new users to the chat
  , canInviteUsers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_chat: *Optional*. Administrators only. True, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  , canManageChat :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_voice_chats: *Optional*. Administrators only. True, if the administrator can manage voice chats
  , canManageVoiceChats :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_pin_messages: *Optional*. Administrators and restricted only. True, if the user is allowed to pin messages; groups and supergroups only
  , canPinMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_post_messages: *Optional*. Administrators only. True, if the administrator can post in the channel; channels only
  , canPostMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_promote_members: *Optional*. Administrators only. True, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  , canPromoteMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_restrict_members: *Optional*. Administrators only. True, if the administrator can restrict, ban or unban chat members
  , canRestrictMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_media_messages: *Optional*. Restricted only. True, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes
  , canSendMediaMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_messages: *Optional*. Restricted only. True, if the user is allowed to send text messages, contacts, locations and venues
  , canSendMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_other_messages: *Optional*. Restricted only. True, if the user is allowed to send animations, games, stickers and use inline bots
  , canSendOtherMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_polls: *Optional*. Restricted only. True, if the user is allowed to send polls
  , canSendPolls :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | custom_title: *Optional*. Owner and administrators only. Custom title for this user
  , customTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | is_anonymous: *Optional*. Owner and administrators only. True, if the user\'s presence in the chat is hidden
  , isAnonymous :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | is_member: *Optional*. Restricted only. True, if the user is a member of the chat at the moment of the request
  , isMember :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | status: The member\'s status in the chat. Can be “creator”, “administrator”, “member”, “restricted”, “left” or “kicked”
  , status :: Status
  -- | until_date: *Optional*. Restricted and kicked only. Date when restrictions will be lifted for this user; unix time
  , untilDate :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | user: This object represents a Telegram user or bot.
  , user :: User
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMember
    where toJSON obj = Data.Aeson.Types.Internal.object ("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= canAddWebPagePreviews obj : "can_be_edited" Data.Aeson.Types.ToJSON..= canBeEdited obj : "can_change_info" Data.Aeson.Types.ToJSON..= canChangeInfo obj : "can_delete_messages" Data.Aeson.Types.ToJSON..= canDeleteMessages obj : "can_edit_messages" Data.Aeson.Types.ToJSON..= canEditMessages obj : "can_invite_users" Data.Aeson.Types.ToJSON..= canInviteUsers obj : "can_manage_chat" Data.Aeson.Types.ToJSON..= canManageChat obj : "can_manage_voice_chats" Data.Aeson.Types.ToJSON..= canManageVoiceChats obj : "can_pin_messages" Data.Aeson.Types.ToJSON..= canPinMessages obj : "can_post_messages" Data.Aeson.Types.ToJSON..= canPostMessages obj : "can_promote_members" Data.Aeson.Types.ToJSON..= canPromoteMembers obj : "can_restrict_members" Data.Aeson.Types.ToJSON..= canRestrictMembers obj : "can_send_media_messages" Data.Aeson.Types.ToJSON..= canSendMediaMessages obj : "can_send_messages" Data.Aeson.Types.ToJSON..= canSendMessages obj : "can_send_other_messages" Data.Aeson.Types.ToJSON..= canSendOtherMessages obj : "can_send_polls" Data.Aeson.Types.ToJSON..= canSendPolls obj : "custom_title" Data.Aeson.Types.ToJSON..= customTitle obj : "is_anonymous" Data.Aeson.Types.ToJSON..= isAnonymous obj : "is_member" Data.Aeson.Types.ToJSON..= isMember obj : "status" Data.Aeson.Types.ToJSON..= status obj : "until_date" Data.Aeson.Types.ToJSON..= untilDate obj : "user" Data.Aeson.Types.ToJSON..= user obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= canAddWebPagePreviews obj) GHC.Base.<> (("can_be_edited" Data.Aeson.Types.ToJSON..= canBeEdited obj) GHC.Base.<> (("can_change_info" Data.Aeson.Types.ToJSON..= canChangeInfo obj) GHC.Base.<> (("can_delete_messages" Data.Aeson.Types.ToJSON..= canDeleteMessages obj) GHC.Base.<> (("can_edit_messages" Data.Aeson.Types.ToJSON..= canEditMessages obj) GHC.Base.<> (("can_invite_users" Data.Aeson.Types.ToJSON..= canInviteUsers obj) GHC.Base.<> (("can_manage_chat" Data.Aeson.Types.ToJSON..= canManageChat obj) GHC.Base.<> (("can_manage_voice_chats" Data.Aeson.Types.ToJSON..= canManageVoiceChats obj) GHC.Base.<> (("can_pin_messages" Data.Aeson.Types.ToJSON..= canPinMessages obj) GHC.Base.<> (("can_post_messages" Data.Aeson.Types.ToJSON..= canPostMessages obj) GHC.Base.<> (("can_promote_members" Data.Aeson.Types.ToJSON..= canPromoteMembers obj) GHC.Base.<> (("can_restrict_members" Data.Aeson.Types.ToJSON..= canRestrictMembers obj) GHC.Base.<> (("can_send_media_messages" Data.Aeson.Types.ToJSON..= canSendMediaMessages obj) GHC.Base.<> (("can_send_messages" Data.Aeson.Types.ToJSON..= canSendMessages obj) GHC.Base.<> (("can_send_other_messages" Data.Aeson.Types.ToJSON..= canSendOtherMessages obj) GHC.Base.<> (("can_send_polls" Data.Aeson.Types.ToJSON..= canSendPolls obj) GHC.Base.<> (("custom_title" Data.Aeson.Types.ToJSON..= customTitle obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= isAnonymous obj) GHC.Base.<> (("is_member" Data.Aeson.Types.ToJSON..= isMember obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= status obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= untilDate obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= user obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMember
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMember" (\obj -> (((((((((((((((((((((GHC.Base.pure ChatMember GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_add_web_page_previews")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_be_edited")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_change_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_delete_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_edit_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_invite_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_voice_chats")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_pin_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_post_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_promote_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_restrict_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_media_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_other_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_polls")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_member")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "user"))
-- | Create a new 'ChatMember' with all required fields.
mkChatMember :: Status -- ^ 'status'
  -> User -- ^ 'user'
  -> ChatMember
mkChatMember status user = ChatMember{canAddWebPagePreviews = GHC.Maybe.Nothing,
                                      canBeEdited = GHC.Maybe.Nothing,
                                      canChangeInfo = GHC.Maybe.Nothing,
                                      canDeleteMessages = GHC.Maybe.Nothing,
                                      canEditMessages = GHC.Maybe.Nothing,
                                      canInviteUsers = GHC.Maybe.Nothing,
                                      canManageChat = GHC.Maybe.Nothing,
                                      canManageVoiceChats = GHC.Maybe.Nothing,
                                      canPinMessages = GHC.Maybe.Nothing,
                                      canPostMessages = GHC.Maybe.Nothing,
                                      canPromoteMembers = GHC.Maybe.Nothing,
                                      canRestrictMembers = GHC.Maybe.Nothing,
                                      canSendMediaMessages = GHC.Maybe.Nothing,
                                      canSendMessages = GHC.Maybe.Nothing,
                                      canSendOtherMessages = GHC.Maybe.Nothing,
                                      canSendPolls = GHC.Maybe.Nothing,
                                      customTitle = GHC.Maybe.Nothing,
                                      isAnonymous = GHC.Maybe.Nothing,
                                      isMember = GHC.Maybe.Nothing,
                                      status = status,
                                      untilDate = GHC.Maybe.Nothing,
                                      user = user}
-- | Defines the enum schema located at @components.schemas.ChatMember.properties.status@ in the specification.
-- 
-- The member\'s status in the chat. Can be “creator”, “administrator”, “member”, “restricted”, “left” or “kicked”
data Status =
   StatusOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | StatusTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | StatusEnumCreator -- ^ Represents the JSON value @"creator"@
  | StatusEnumAdministrator -- ^ Represents the JSON value @"administrator"@
  | StatusEnumMember -- ^ Represents the JSON value @"member"@
  | StatusEnumRestricted -- ^ Represents the JSON value @"restricted"@
  | StatusEnumLeft -- ^ Represents the JSON value @"left"@
  | StatusEnumKicked -- ^ Represents the JSON value @"kicked"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Status
    where toJSON (StatusOther val) = val
          toJSON (StatusTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (StatusEnumCreator) = "creator"
          toJSON (StatusEnumAdministrator) = "administrator"
          toJSON (StatusEnumMember) = "member"
          toJSON (StatusEnumRestricted) = "restricted"
          toJSON (StatusEnumLeft) = "left"
          toJSON (StatusEnumKicked) = "kicked"
instance Data.Aeson.Types.FromJSON.FromJSON Status
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "creator" -> StatusEnumCreator
                                            | val GHC.Classes.== "administrator" -> StatusEnumAdministrator
                                            | val GHC.Classes.== "member" -> StatusEnumMember
                                            | val GHC.Classes.== "restricted" -> StatusEnumRestricted
                                            | val GHC.Classes.== "left" -> StatusEnumLeft
                                            | val GHC.Classes.== "kicked" -> StatusEnumKicked
                                            | GHC.Base.otherwise -> StatusOther val)
