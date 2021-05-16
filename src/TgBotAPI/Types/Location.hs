-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Location
module TgBotAPI.Types.Location where

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

-- | Defines the object schema located at @components.schemas.Location@ in the specification.
-- 
-- This object represents a point on the map.
data Location = Location {
  -- | heading: *Optional*. The direction in which user is moving, in degrees; 1-360. For active live locations only.
  locationHeading :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | horizontal_accuracy: *Optional*. The radius of uncertainty for the location, measured in meters; 0-1500
  , locationHorizontalAccuracy :: (GHC.Maybe.Maybe GHC.Types.Double)
  -- | latitude: Latitude as defined by sender
  , locationLatitude :: GHC.Types.Double
  -- | live_period: *Optional*. Time relative to the message sending date, during which the location can be updated, in seconds. For active live locations only.
  , locationLivePeriod :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | longitude: Longitude as defined by sender
  , locationLongitude :: GHC.Types.Double
  -- | proximity_alert_radius: *Optional*. Maximum distance for proximity alerts about approaching another chat member, in meters. For sent live locations only.
  , locationProximityAlertRadius :: (GHC.Maybe.Maybe GHC.Types.Int)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Location
    where toJSON obj = Data.Aeson.Types.Internal.object ("heading" Data.Aeson.Types.ToJSON..= locationHeading obj : "horizontal_accuracy" Data.Aeson.Types.ToJSON..= locationHorizontalAccuracy obj : "latitude" Data.Aeson.Types.ToJSON..= locationLatitude obj : "live_period" Data.Aeson.Types.ToJSON..= locationLivePeriod obj : "longitude" Data.Aeson.Types.ToJSON..= locationLongitude obj : "proximity_alert_radius" Data.Aeson.Types.ToJSON..= locationProximityAlertRadius obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("heading" Data.Aeson.Types.ToJSON..= locationHeading obj) GHC.Base.<> (("horizontal_accuracy" Data.Aeson.Types.ToJSON..= locationHorizontalAccuracy obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= locationLatitude obj) GHC.Base.<> (("live_period" Data.Aeson.Types.ToJSON..= locationLivePeriod obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= locationLongitude obj) GHC.Base.<> ("proximity_alert_radius" Data.Aeson.Types.ToJSON..= locationProximityAlertRadius obj))))))
instance Data.Aeson.Types.FromJSON.FromJSON Location
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Location" (\obj -> (((((GHC.Base.pure Location GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "heading")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "horizontal_accuracy")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "live_period")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_radius"))
-- | Create a new 'Location' with all required fields.
mkLocation :: GHC.Types.Double -- ^ 'locationLatitude'
  -> GHC.Types.Double -- ^ 'locationLongitude'
  -> Location
mkLocation locationLatitude locationLongitude = Location{locationHeading = GHC.Maybe.Nothing,
                                                         locationHorizontalAccuracy = GHC.Maybe.Nothing,
                                                         locationLatitude = locationLatitude,
                                                         locationLivePeriod = GHC.Maybe.Nothing,
                                                         locationLongitude = locationLongitude,
                                                         locationProximityAlertRadius = GHC.Maybe.Nothing}