module TgBotAPI.Types.Chat where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Chat
instance Show Chat
instance Eq Chat
instance FromJSON Chat
instance ToJSON Chat
data ChatType
instance Show ChatType
instance Eq ChatType
instance FromJSON ChatType
instance ToJSON ChatType
