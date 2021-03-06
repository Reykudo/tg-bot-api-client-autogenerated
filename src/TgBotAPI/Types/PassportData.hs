-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema PassportData
module TgBotAPI.Types.PassportData where

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
import  {-# SOURCE #-}  TgBotAPI.Types.EncryptedCredentials (EncryptedCredentials)
import  {-# SOURCE #-}  TgBotAPI.Types.EncryptedPassportElement (EncryptedPassportElement)

-- | Defines the object schema located at @components.schemas.PassportData@ in the specification.
-- 
-- Contains information about Telegram Passport data shared with the bot by the user.
data PassportData = PassportData {
  -- | credentials: Contains data required for decrypting and authenticating [EncryptedPassportElement](https:\/\/core.telegram.org\/bots\/api\/\#encryptedpassportelement). See the [Telegram Passport Documentation](https:\/\/core.telegram.org\/passport\#receiving-information) for a complete description of the data decryption and authentication processes.
  credentials :: EncryptedCredentials
  -- | data: Array with information about documents and other Telegram Passport elements that was shared with the bot
  , data' :: ([EncryptedPassportElement])
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportData
    where toJSON obj = Data.Aeson.Types.Internal.object ("credentials" Data.Aeson.Types.ToJSON..= credentials obj : "data" Data.Aeson.Types.ToJSON..= data' obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("credentials" Data.Aeson.Types.ToJSON..= credentials obj) GHC.Base.<> ("data" Data.Aeson.Types.ToJSON..= data' obj))
instance Data.Aeson.Types.FromJSON.FromJSON PassportData
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportData" (\obj -> (GHC.Base.pure PassportData GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "credentials")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data"))
-- | Create a new 'PassportData' with all required fields.
mkPassportData :: EncryptedCredentials -- ^ 'credentials'
  -> [EncryptedPassportElement] -- ^ 'data''
  -> PassportData
mkPassportData credentials data' = PassportData{credentials = credentials,
                                                data' = data'}
