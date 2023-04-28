// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AppUpdate App update
//
// swagger:model App update.
type AppUpdate struct {

	// carousel
	Carousel []*Slide `json:"carousel,omitempty"`

	// developer, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators, these symbols ',.-, and white-space, max length is 48
	Developer string `json:"developer,omitempty"`

	// forum url, max length 2000
	ForumURL string `json:"forumUrl,omitempty"`

	// genres
	// Enum: ['Action', 'Adventure', 'Casual', 'FreeToPlay', 'Indie', 'MassivelyMultiplayer', 'RPG', 'Racing', 'Simulation', 'Sports', 'Strategy']
	Genres []string `json:"genres,omitempty"`

	// localizations
	Localizations map[string]AppLocalization `json:"localizations,omitempty"`

	// platform requirements
	PlatformRequirements map[string][]Requirement `json:"platformRequirements,omitempty"`

	// supported platforms
	// Enum: ['Android', 'IOS', 'Linux', 'MacOS', 'Windows']
	Platforms []string `json:"platforms,omitempty"`

	// players
	// Enum: ['Coop', 'CrossPlatformMulti', 'LocalCoop', 'MMO', 'Multi', 'Single']
	Players []string `json:"players,omitempty"`

	// primary genre
	// Enum: ['Action', 'Adventure', 'Casual', 'FreeToPlay', 'Indie', 'MassivelyMultiplayer', 'RPG', 'Racing', 'Simulation', 'Sports', 'Strategy']
	PrimaryGenre string `json:"primaryGenre,omitempty"`

	// publisher, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators, these symbols ',.-, and white-space, max length is 48
	Publisher string `json:"publisher,omitempty"`

	// release date in format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	ReleaseDate *strfmt.DateTime `json:"releaseDate,omitempty"`

	// website url, max length is 2000
	WebsiteURL string `json:"websiteUrl,omitempty"`
}

// Validate validates this App update
func (m *AppUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var appUpdateTypeGenresItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateTypeGenresItemsEnum = append(appUpdateTypeGenresItemsEnum, v)
	}
}

const (

	// AppUpdateGenresACTION captures enum value "ACTION"
	AppUpdateGenresACTION string = "ACTION"

	// AppUpdateGenresADVENTURE captures enum value "ADVENTURE"
	AppUpdateGenresADVENTURE string = "ADVENTURE"

	// AppUpdateGenresCASUAL captures enum value "CASUAL"
	AppUpdateGenresCASUAL string = "CASUAL"

	// AppUpdateGenresFREETOPLAY captures enum value "FREETOPLAY"
	AppUpdateGenresFREETOPLAY string = "FREETOPLAY"

	// AppUpdateGenresINDIE captures enum value "INDIE"
	AppUpdateGenresINDIE string = "INDIE"

	// AppUpdateGenresMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	AppUpdateGenresMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// AppUpdateGenresRPG captures enum value "RPG"
	AppUpdateGenresRPG string = "RPG"

	// AppUpdateGenresRACING captures enum value "RACING"
	AppUpdateGenresRACING string = "RACING"

	// AppUpdateGenresSIMULATION captures enum value "SIMULATION"
	AppUpdateGenresSIMULATION string = "SIMULATION"

	// AppUpdateGenresSPORTS captures enum value "SPORTS"
	AppUpdateGenresSPORTS string = "SPORTS"

	// AppUpdateGenresSTRATEGY captures enum value "STRATEGY"
	AppUpdateGenresSTRATEGY string = "STRATEGY"
)

func (m *AppUpdate) validateGenresItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateTypeGenresItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var appUpdateTypePlatformsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ANDROID", "IOS", "LINUX", "MACOS", "WINDOWS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateTypePlatformsItemsEnum = append(appUpdateTypePlatformsItemsEnum, v)
	}
}

const (

	// AppUpdatePlatformsANDROID captures enum value "ANDROID"
	AppUpdatePlatformsANDROID string = "ANDROID"

	// AppUpdatePlatformsIOS captures enum value "IOS"
	AppUpdatePlatformsIOS string = "IOS"

	// AppUpdatePlatformsLINUX captures enum value "LINUX"
	AppUpdatePlatformsLINUX string = "LINUX"

	// AppUpdatePlatformsMACOS captures enum value "MACOS"
	AppUpdatePlatformsMACOS string = "MACOS"

	// AppUpdatePlatformsWINDOWS captures enum value "WINDOWS"
	AppUpdatePlatformsWINDOWS string = "WINDOWS"
)

func (m *AppUpdate) validatePlatformsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateTypePlatformsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var appUpdateTypePlayersItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COOP", "CROSSPLATFORMMULTI", "LOCALCOOP", "MMO", "MULTI", "SINGLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateTypePlayersItemsEnum = append(appUpdateTypePlayersItemsEnum, v)
	}
}

const (

	// AppUpdatePlayersCOOP captures enum value "COOP"
	AppUpdatePlayersCOOP string = "COOP"

	// AppUpdatePlayersCROSSPLATFORMMULTI captures enum value "CROSSPLATFORMMULTI"
	AppUpdatePlayersCROSSPLATFORMMULTI string = "CROSSPLATFORMMULTI"

	// AppUpdatePlayersLOCALCOOP captures enum value "LOCALCOOP"
	AppUpdatePlayersLOCALCOOP string = "LOCALCOOP"

	// AppUpdatePlayersMMO captures enum value "MMO"
	AppUpdatePlayersMMO string = "MMO"

	// AppUpdatePlayersMULTI captures enum value "MULTI"
	AppUpdatePlayersMULTI string = "MULTI"

	// AppUpdatePlayersSINGLE captures enum value "SINGLE"
	AppUpdatePlayersSINGLE string = "SINGLE"
)

func (m *AppUpdate) validatePlayersItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateTypePlayersItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var appUpdateTypePrimaryGenrePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateTypePrimaryGenrePropEnum = append(appUpdateTypePrimaryGenrePropEnum, v)
	}
}

const (

	// AppUpdatePrimaryGenreACTION captures enum value "ACTION"
	AppUpdatePrimaryGenreACTION string = "ACTION"

	// AppUpdatePrimaryGenreADVENTURE captures enum value "ADVENTURE"
	AppUpdatePrimaryGenreADVENTURE string = "ADVENTURE"

	// AppUpdatePrimaryGenreCASUAL captures enum value "CASUAL"
	AppUpdatePrimaryGenreCASUAL string = "CASUAL"

	// AppUpdatePrimaryGenreFREETOPLAY captures enum value "FREETOPLAY"
	AppUpdatePrimaryGenreFREETOPLAY string = "FREETOPLAY"

	// AppUpdatePrimaryGenreINDIE captures enum value "INDIE"
	AppUpdatePrimaryGenreINDIE string = "INDIE"

	// AppUpdatePrimaryGenreMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	AppUpdatePrimaryGenreMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// AppUpdatePrimaryGenreRPG captures enum value "RPG"
	AppUpdatePrimaryGenreRPG string = "RPG"

	// AppUpdatePrimaryGenreRACING captures enum value "RACING"
	AppUpdatePrimaryGenreRACING string = "RACING"

	// AppUpdatePrimaryGenreSIMULATION captures enum value "SIMULATION"
	AppUpdatePrimaryGenreSIMULATION string = "SIMULATION"

	// AppUpdatePrimaryGenreSPORTS captures enum value "SPORTS"
	AppUpdatePrimaryGenreSPORTS string = "SPORTS"

	// AppUpdatePrimaryGenreSTRATEGY captures enum value "STRATEGY"
	AppUpdatePrimaryGenreSTRATEGY string = "STRATEGY"
)

// prop value enum
func (m *AppUpdate) validatePrimaryGenreEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateTypePrimaryGenrePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppUpdate) UnmarshalBinary(b []byte) error {
	var res AppUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
