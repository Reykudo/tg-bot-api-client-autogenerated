module TgBotAPI.Types.EncryptedCredentials where
import Data.Aeson
import qualified Data.Aeson as Data.Aeson.Types.Internal
data EncryptedCredentials
instance Show EncryptedCredentials
instance Eq EncryptedCredentials
instance FromJSON EncryptedCredentials
instance ToJSON EncryptedCredentials
