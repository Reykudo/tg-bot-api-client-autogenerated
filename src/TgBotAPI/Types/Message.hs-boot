module TgBotAPI.Types.Message where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data Message
instance Show Message
instance Eq Message
instance FromJSON Message
instance ToJSON Message
