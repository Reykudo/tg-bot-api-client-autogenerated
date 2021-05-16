-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PassportElementErrorTranslationFile
module TgBotAPI.Types.PassportElementErrorTranslationFile where

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

-- | Defines the object schema located at @components.schemas.PassportElementErrorTranslationFile@ in the specification.
-- 
-- Represents an issue with one of the files that constitute the translation of a document. The error is considered resolved when the file changes.
data PassportElementErrorTranslationFile = PassportElementErrorTranslationFile {
  -- | file_hash: Base64-encoded file hash
  passportElementErrorTranslationFileFileHash :: Data.Text.Internal.Text
  -- | message: Error message
  , passportElementErrorTranslationFileMessage :: Data.Text.Internal.Text
  -- | source: Error source, must be *translation\\_file*
  , passportElementErrorTranslationFileSource :: Data.Text.Internal.Text
  -- | type: Type of element of the user\'s Telegram Passport which has the issue, one of “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
  , passportElementErrorTranslationFileType :: PassportElementErrorTranslationFileType
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorTranslationFile
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileFileHash obj : "message" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileMessage obj : "source" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileSource obj : "type" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("file_hash" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileFileHash obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileMessage obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileSource obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= passportElementErrorTranslationFileType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorTranslationFile
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportElementErrorTranslationFile" (\obj -> (((GHC.Base.pure PassportElementErrorTranslationFile GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PassportElementErrorTranslationFile' with all required fields.
mkPassportElementErrorTranslationFile :: Data.Text.Internal.Text -- ^ 'passportElementErrorTranslationFileFileHash'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorTranslationFileMessage'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorTranslationFileSource'
  -> PassportElementErrorTranslationFileType -- ^ 'passportElementErrorTranslationFileType'
  -> PassportElementErrorTranslationFile
mkPassportElementErrorTranslationFile passportElementErrorTranslationFileFileHash passportElementErrorTranslationFileMessage passportElementErrorTranslationFileSource passportElementErrorTranslationFileType = PassportElementErrorTranslationFile{passportElementErrorTranslationFileFileHash = passportElementErrorTranslationFileFileHash,
                                                                                                                                                                                                                                                     passportElementErrorTranslationFileMessage = passportElementErrorTranslationFileMessage,
                                                                                                                                                                                                                                                     passportElementErrorTranslationFileSource = passportElementErrorTranslationFileSource,
                                                                                                                                                                                                                                                     passportElementErrorTranslationFileType = passportElementErrorTranslationFileType}
-- | Defines the enum schema located at @components.schemas.PassportElementErrorTranslationFile.properties.type@ in the specification.
-- 
-- Type of element of the user\'s Telegram Passport which has the issue, one of “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
data PassportElementErrorTranslationFileType =
   PassportElementErrorTranslationFileTypeOther Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PassportElementErrorTranslationFileTypeTyped Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PassportElementErrorTranslationFileTypeEnumPassport -- ^ Represents the JSON value @"passport"@
  | PassportElementErrorTranslationFileTypeEnumDriverLicense -- ^ Represents the JSON value @"driver_license"@
  | PassportElementErrorTranslationFileTypeEnumIdentityCard -- ^ Represents the JSON value @"identity_card"@
  | PassportElementErrorTranslationFileTypeEnumInternalPassport -- ^ Represents the JSON value @"internal_passport"@
  | PassportElementErrorTranslationFileTypeEnumUtilityBill -- ^ Represents the JSON value @"utility_bill"@
  | PassportElementErrorTranslationFileTypeEnumBankStatement -- ^ Represents the JSON value @"bank_statement"@
  | PassportElementErrorTranslationFileTypeEnumRentalAgreement -- ^ Represents the JSON value @"rental_agreement"@
  | PassportElementErrorTranslationFileTypeEnumPassportRegistration -- ^ Represents the JSON value @"passport_registration"@
  | PassportElementErrorTranslationFileTypeEnumTemporaryRegistration -- ^ Represents the JSON value @"temporary_registration"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorTranslationFileType
    where toJSON (PassportElementErrorTranslationFileTypeOther val) = val
          toJSON (PassportElementErrorTranslationFileTypeTyped val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PassportElementErrorTranslationFileTypeEnumPassport) = "passport"
          toJSON (PassportElementErrorTranslationFileTypeEnumDriverLicense) = "driver_license"
          toJSON (PassportElementErrorTranslationFileTypeEnumIdentityCard) = "identity_card"
          toJSON (PassportElementErrorTranslationFileTypeEnumInternalPassport) = "internal_passport"
          toJSON (PassportElementErrorTranslationFileTypeEnumUtilityBill) = "utility_bill"
          toJSON (PassportElementErrorTranslationFileTypeEnumBankStatement) = "bank_statement"
          toJSON (PassportElementErrorTranslationFileTypeEnumRentalAgreement) = "rental_agreement"
          toJSON (PassportElementErrorTranslationFileTypeEnumPassportRegistration) = "passport_registration"
          toJSON (PassportElementErrorTranslationFileTypeEnumTemporaryRegistration) = "temporary_registration"
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorTranslationFileType
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "passport" -> PassportElementErrorTranslationFileTypeEnumPassport
                                            | val GHC.Classes.== "driver_license" -> PassportElementErrorTranslationFileTypeEnumDriverLicense
                                            | val GHC.Classes.== "identity_card" -> PassportElementErrorTranslationFileTypeEnumIdentityCard
                                            | val GHC.Classes.== "internal_passport" -> PassportElementErrorTranslationFileTypeEnumInternalPassport
                                            | val GHC.Classes.== "utility_bill" -> PassportElementErrorTranslationFileTypeEnumUtilityBill
                                            | val GHC.Classes.== "bank_statement" -> PassportElementErrorTranslationFileTypeEnumBankStatement
                                            | val GHC.Classes.== "rental_agreement" -> PassportElementErrorTranslationFileTypeEnumRentalAgreement
                                            | val GHC.Classes.== "passport_registration" -> PassportElementErrorTranslationFileTypeEnumPassportRegistration
                                            | val GHC.Classes.== "temporary_registration" -> PassportElementErrorTranslationFileTypeEnumTemporaryRegistration
                                            | GHC.Base.otherwise -> PassportElementErrorTranslationFileTypeOther val)