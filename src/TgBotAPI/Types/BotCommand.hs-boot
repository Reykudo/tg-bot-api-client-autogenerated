module TgBotAPI.Types.BotCommand where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data BotCommand
instance Show BotCommand
instance Eq BotCommand
instance FromJSON BotCommand
instance ToJSON BotCommand
