-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Contact
module TgBotAPI.Types.Contact where

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

-- | Defines the object schema located at @components.schemas.Contact@ in the specification.
-- 
-- This object represents a phone contact.
data Contact = Contact {
  -- | first_name: Contact\'s first name
  firstName :: Data.Text.Internal.Text
  -- | last_name: *Optional*. Contact\'s last name
  , lastName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | phone_number: Contact\'s phone number
  , phoneNumber :: Data.Text.Internal.Text
  -- | user_id: *Optional*. Contact\'s user identifier in Telegram. This number may have more than 32 significant bits and some programming languages may have difficulty\/silent defects in interpreting it. But it has at most 52 significant bits, so a 64-bit integer or double-precision float type are safe for storing this identifier.
  , userId :: (GHC.Maybe.Maybe GHC.Int.Int64)
  -- | vcard: *Optional*. Additional data about the contact in the form of a [vCard](https:\/\/en.wikipedia.org\/wiki\/VCard)
  , vcard :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Contact
    where toJSON obj = Data.Aeson.Types.Internal.object ("first_name" Data.Aeson.Types.ToJSON..= firstName obj : "last_name" Data.Aeson.Types.ToJSON..= lastName obj : "phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj : "user_id" Data.Aeson.Types.ToJSON..= userId obj : "vcard" Data.Aeson.Types.ToJSON..= vcard obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("first_name" Data.Aeson.Types.ToJSON..= firstName obj) GHC.Base.<> (("last_name" Data.Aeson.Types.ToJSON..= lastName obj) GHC.Base.<> (("phone_number" Data.Aeson.Types.ToJSON..= phoneNumber obj) GHC.Base.<> (("user_id" Data.Aeson.Types.ToJSON..= userId obj) GHC.Base.<> ("vcard" Data.Aeson.Types.ToJSON..= vcard obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON Contact
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Contact" (\obj -> ((((GHC.Base.pure Contact GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "first_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "last_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "phone_number")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "vcard"))
-- | Create a new 'Contact' with all required fields.
mkContact :: Data.Text.Internal.Text -- ^ 'firstName'
  -> Data.Text.Internal.Text -- ^ 'phoneNumber'
  -> Contact
mkContact firstName phoneNumber = Contact{firstName = firstName,
                                          lastName = GHC.Maybe.Nothing,
                                          phoneNumber = phoneNumber,
                                          userId = GHC.Maybe.Nothing,
                                          vcard = GHC.Maybe.Nothing}
