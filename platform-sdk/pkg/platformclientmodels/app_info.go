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

// AppInfo App info
//
// swagger:model App info.
type AppInfo struct {

	// announcement
	Announcement string `json:"announcement,omitempty"`

	// carousel
	Carousel []*Slide `json:"carousel,omitempty"`

	// developer
	Developer string `json:"developer,omitempty"`

	// forum url
	ForumURL string `json:"forumUrl,omitempty"`

	// genres
	// Enum: ['Action', 'Adventure', 'Casual', 'FreeToPlay', 'Indie', 'MassivelyMultiplayer', 'RPG', 'Racing', 'Simulation', 'Sports', 'Strategy']
	Genres []string `json:"genres,omitempty"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// language
	Language string `json:"language,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

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

	// publisher
	Publisher string `json:"publisher,omitempty"`

	// region
	Region string `json:"region,omitempty"`

	// release date
	// Format: date-time
	ReleaseDate *strfmt.DateTime `json:"releaseDate,omitempty"`

	// slogan
	Slogan string `json:"slogan,omitempty"`

	// website url
	WebsiteURL string `json:"websiteUrl,omitempty"`
}

// Validate validates this App info
func (m *AppInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var appInfoTypeGenresItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appInfoTypeGenresItemsEnum = append(appInfoTypeGenresItemsEnum, v)
	}
}

const (

	// AppInfoGenresACTION captures enum value "ACTION"
	AppInfoGenresACTION string = "ACTION"

	// AppInfoGenresADVENTURE captures enum value "ADVENTURE"
	AppInfoGenresADVENTURE string = "ADVENTURE"

	// AppInfoGenresCASUAL captures enum value "CASUAL"
	AppInfoGenresCASUAL string = "CASUAL"

	// AppInfoGenresFREETOPLAY captures enum value "FREETOPLAY"
	AppInfoGenresFREETOPLAY string = "FREETOPLAY"

	// AppInfoGenresINDIE captures enum value "INDIE"
	AppInfoGenresINDIE string = "INDIE"

	// AppInfoGenresMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	AppInfoGenresMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// AppInfoGenresRPG captures enum value "RPG"
	AppInfoGenresRPG string = "RPG"

	// AppInfoGenresRACING captures enum value "RACING"
	AppInfoGenresRACING string = "RACING"

	// AppInfoGenresSIMULATION captures enum value "SIMULATION"
	AppInfoGenresSIMULATION string = "SIMULATION"

	// AppInfoGenresSPORTS captures enum value "SPORTS"
	AppInfoGenresSPORTS string = "SPORTS"

	// AppInfoGenresSTRATEGY captures enum value "STRATEGY"
	AppInfoGenresSTRATEGY string = "STRATEGY"
)

func (m *AppInfo) validateGenresItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appInfoTypeGenresItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *AppInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var appInfoTypePlatformsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ANDROID", "IOS", "LINUX", "MACOS", "WINDOWS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appInfoTypePlatformsItemsEnum = append(appInfoTypePlatformsItemsEnum, v)
	}
}

const (

	// AppInfoPlatformsANDROID captures enum value "ANDROID"
	AppInfoPlatformsANDROID string = "ANDROID"

	// AppInfoPlatformsIOS captures enum value "IOS"
	AppInfoPlatformsIOS string = "IOS"

	// AppInfoPlatformsLINUX captures enum value "LINUX"
	AppInfoPlatformsLINUX string = "LINUX"

	// AppInfoPlatformsMACOS captures enum value "MACOS"
	AppInfoPlatformsMACOS string = "MACOS"

	// AppInfoPlatformsWINDOWS captures enum value "WINDOWS"
	AppInfoPlatformsWINDOWS string = "WINDOWS"
)

func (m *AppInfo) validatePlatformsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appInfoTypePlatformsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var appInfoTypePlayersItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COOP", "CROSSPLATFORMMULTI", "LOCALCOOP", "MMO", "MULTI", "SINGLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appInfoTypePlayersItemsEnum = append(appInfoTypePlayersItemsEnum, v)
	}
}

const (

	// AppInfoPlayersCOOP captures enum value "COOP"
	AppInfoPlayersCOOP string = "COOP"

	// AppInfoPlayersCROSSPLATFORMMULTI captures enum value "CROSSPLATFORMMULTI"
	AppInfoPlayersCROSSPLATFORMMULTI string = "CROSSPLATFORMMULTI"

	// AppInfoPlayersLOCALCOOP captures enum value "LOCALCOOP"
	AppInfoPlayersLOCALCOOP string = "LOCALCOOP"

	// AppInfoPlayersMMO captures enum value "MMO"
	AppInfoPlayersMMO string = "MMO"

	// AppInfoPlayersMULTI captures enum value "MULTI"
	AppInfoPlayersMULTI string = "MULTI"

	// AppInfoPlayersSINGLE captures enum value "SINGLE"
	AppInfoPlayersSINGLE string = "SINGLE"
)

func (m *AppInfo) validatePlayersItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appInfoTypePlayersItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var appInfoTypePrimaryGenrePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appInfoTypePrimaryGenrePropEnum = append(appInfoTypePrimaryGenrePropEnum, v)
	}
}

const (

	// AppInfoPrimaryGenreACTION captures enum value "ACTION"
	AppInfoPrimaryGenreACTION string = "ACTION"

	// AppInfoPrimaryGenreADVENTURE captures enum value "ADVENTURE"
	AppInfoPrimaryGenreADVENTURE string = "ADVENTURE"

	// AppInfoPrimaryGenreCASUAL captures enum value "CASUAL"
	AppInfoPrimaryGenreCASUAL string = "CASUAL"

	// AppInfoPrimaryGenreFREETOPLAY captures enum value "FREETOPLAY"
	AppInfoPrimaryGenreFREETOPLAY string = "FREETOPLAY"

	// AppInfoPrimaryGenreINDIE captures enum value "INDIE"
	AppInfoPrimaryGenreINDIE string = "INDIE"

	// AppInfoPrimaryGenreMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	AppInfoPrimaryGenreMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// AppInfoPrimaryGenreRPG captures enum value "RPG"
	AppInfoPrimaryGenreRPG string = "RPG"

	// AppInfoPrimaryGenreRACING captures enum value "RACING"
	AppInfoPrimaryGenreRACING string = "RACING"

	// AppInfoPrimaryGenreSIMULATION captures enum value "SIMULATION"
	AppInfoPrimaryGenreSIMULATION string = "SIMULATION"

	// AppInfoPrimaryGenreSPORTS captures enum value "SPORTS"
	AppInfoPrimaryGenreSPORTS string = "SPORTS"

	// AppInfoPrimaryGenreSTRATEGY captures enum value "STRATEGY"
	AppInfoPrimaryGenreSTRATEGY string = "STRATEGY"
)

// prop value enum
func (m *AppInfo) validatePrimaryGenreEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appInfoTypePrimaryGenrePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *AppInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AppInfo) UnmarshalBinary(b []byte) error {
	var res AppInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
