module TgBotAPI.Types.ChatMember where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data ChatMember
instance Show ChatMember
instance Eq ChatMember
instance FromJSON ChatMember
instance ToJSON ChatMember
data ChatMemberStatus
instance Show ChatMemberStatus
instance Eq ChatMemberStatus
instance FromJSON ChatMemberStatus
instance ToJSON ChatMemberStatus
