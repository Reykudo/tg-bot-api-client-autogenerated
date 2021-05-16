-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}
{-# LANGUAGE DuplicateRecordFields #-}

-- | Contains the types generated from the schema Error
module TgBotAPI.Types.Error where

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
import  {-# SOURCE #-}  TgBotAPI.Types.ResponseParameters (ResponseParameters)

-- | Defines the object schema located at @components.schemas.Error@ in the specification.
-- 
-- 
data Error = Error {
  -- | description
  description :: Data.Text.Internal.Text
  -- | error_code
  , errorCode :: GHC.Types.Int
  -- | ok
  , ok :: GHC.Types.Bool
  -- | parameters: Contains information about why a request was unsuccessful.
  , parameters :: (GHC.Maybe.Maybe ResponseParameters)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Error
    where toJSON obj = Data.Aeson.Types.Internal.object ("description" Data.Aeson.Types.ToJSON..= description obj : "error_code" Data.Aeson.Types.ToJSON..= errorCode obj : "ok" Data.Aeson.Types.ToJSON..= ok obj : "parameters" Data.Aeson.Types.ToJSON..= parameters obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("description" Data.Aeson.Types.ToJSON..= description obj) GHC.Base.<> (("error_code" Data.Aeson.Types.ToJSON..= errorCode obj) GHC.Base.<> (("ok" Data.Aeson.Types.ToJSON..= ok obj) GHC.Base.<> ("parameters" Data.Aeson.Types.ToJSON..= parameters obj))))
instance Data.Aeson.Types.FromJSON.FromJSON Error
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Error" (\obj -> (((GHC.Base.pure Error GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "description")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "error_code")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "ok")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "parameters"))
-- | Create a new 'Error' with all required fields.
mkError :: Data.Text.Internal.Text -- ^ 'description'
  -> GHC.Types.Int -- ^ 'errorCode'
  -> GHC.Types.Bool -- ^ 'ok'
  -> Error
mkError description errorCode ok = Error{description = description,
                                         errorCode = errorCode,
                                         ok = ok,
                                         parameters = GHC.Maybe.Nothing}
