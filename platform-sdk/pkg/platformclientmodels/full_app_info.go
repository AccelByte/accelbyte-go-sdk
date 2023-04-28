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

// FullAppInfo Full app info
//
// swagger:model Full app info.
type FullAppInfo struct {

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

	// localizations
	Localizations map[string]AppLocalization `json:"localizations,omitempty"`

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

	// release date
	// Format: date-time
	ReleaseDate *strfmt.DateTime `json:"releaseDate,omitempty"`

	// website url
	WebsiteURL string `json:"websiteUrl,omitempty"`
}

// Validate validates this Full app info
func (m *FullAppInfo) Validate(formats strfmt.Registry) error {
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

var fullAppInfoTypeGenresItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullAppInfoTypeGenresItemsEnum = append(fullAppInfoTypeGenresItemsEnum, v)
	}
}

const (

	// FullAppInfoGenresACTION captures enum value "ACTION"
	FullAppInfoGenresACTION string = "ACTION"

	// FullAppInfoGenresADVENTURE captures enum value "ADVENTURE"
	FullAppInfoGenresADVENTURE string = "ADVENTURE"

	// FullAppInfoGenresCASUAL captures enum value "CASUAL"
	FullAppInfoGenresCASUAL string = "CASUAL"

	// FullAppInfoGenresFREETOPLAY captures enum value "FREETOPLAY"
	FullAppInfoGenresFREETOPLAY string = "FREETOPLAY"

	// FullAppInfoGenresINDIE captures enum value "INDIE"
	FullAppInfoGenresINDIE string = "INDIE"

	// FullAppInfoGenresMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	FullAppInfoGenresMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// FullAppInfoGenresRPG captures enum value "RPG"
	FullAppInfoGenresRPG string = "RPG"

	// FullAppInfoGenresRACING captures enum value "RACING"
	FullAppInfoGenresRACING string = "RACING"

	// FullAppInfoGenresSIMULATION captures enum value "SIMULATION"
	FullAppInfoGenresSIMULATION string = "SIMULATION"

	// FullAppInfoGenresSPORTS captures enum value "SPORTS"
	FullAppInfoGenresSPORTS string = "SPORTS"

	// FullAppInfoGenresSTRATEGY captures enum value "STRATEGY"
	FullAppInfoGenresSTRATEGY string = "STRATEGY"
)

func (m *FullAppInfo) validateGenresItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullAppInfoTypeGenresItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullAppInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *FullAppInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fullAppInfoTypePlatformsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ANDROID", "IOS", "LINUX", "MACOS", "WINDOWS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullAppInfoTypePlatformsItemsEnum = append(fullAppInfoTypePlatformsItemsEnum, v)
	}
}

const (

	// FullAppInfoPlatformsANDROID captures enum value "ANDROID"
	FullAppInfoPlatformsANDROID string = "ANDROID"

	// FullAppInfoPlatformsIOS captures enum value "IOS"
	FullAppInfoPlatformsIOS string = "IOS"

	// FullAppInfoPlatformsLINUX captures enum value "LINUX"
	FullAppInfoPlatformsLINUX string = "LINUX"

	// FullAppInfoPlatformsMACOS captures enum value "MACOS"
	FullAppInfoPlatformsMACOS string = "MACOS"

	// FullAppInfoPlatformsWINDOWS captures enum value "WINDOWS"
	FullAppInfoPlatformsWINDOWS string = "WINDOWS"
)

func (m *FullAppInfo) validatePlatformsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullAppInfoTypePlatformsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var fullAppInfoTypePlayersItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COOP", "CROSSPLATFORMMULTI", "LOCALCOOP", "MMO", "MULTI", "SINGLE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullAppInfoTypePlayersItemsEnum = append(fullAppInfoTypePlayersItemsEnum, v)
	}
}

const (

	// FullAppInfoPlayersCOOP captures enum value "COOP"
	FullAppInfoPlayersCOOP string = "COOP"

	// FullAppInfoPlayersCROSSPLATFORMMULTI captures enum value "CROSSPLATFORMMULTI"
	FullAppInfoPlayersCROSSPLATFORMMULTI string = "CROSSPLATFORMMULTI"

	// FullAppInfoPlayersLOCALCOOP captures enum value "LOCALCOOP"
	FullAppInfoPlayersLOCALCOOP string = "LOCALCOOP"

	// FullAppInfoPlayersMMO captures enum value "MMO"
	FullAppInfoPlayersMMO string = "MMO"

	// FullAppInfoPlayersMULTI captures enum value "MULTI"
	FullAppInfoPlayersMULTI string = "MULTI"

	// FullAppInfoPlayersSINGLE captures enum value "SINGLE"
	FullAppInfoPlayersSINGLE string = "SINGLE"
)

func (m *FullAppInfo) validatePlayersItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullAppInfoTypePlayersItemsEnum, true); err != nil {
		return err
	}
	return nil
}

var fullAppInfoTypePrimaryGenrePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTION", "ADVENTURE", "CASUAL", "FREETOPLAY", "INDIE", "MASSIVELYMULTIPLAYER", "RPG", "RACING", "SIMULATION", "SPORTS", "STRATEGY"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullAppInfoTypePrimaryGenrePropEnum = append(fullAppInfoTypePrimaryGenrePropEnum, v)
	}
}

const (

	// FullAppInfoPrimaryGenreACTION captures enum value "ACTION"
	FullAppInfoPrimaryGenreACTION string = "ACTION"

	// FullAppInfoPrimaryGenreADVENTURE captures enum value "ADVENTURE"
	FullAppInfoPrimaryGenreADVENTURE string = "ADVENTURE"

	// FullAppInfoPrimaryGenreCASUAL captures enum value "CASUAL"
	FullAppInfoPrimaryGenreCASUAL string = "CASUAL"

	// FullAppInfoPrimaryGenreFREETOPLAY captures enum value "FREETOPLAY"
	FullAppInfoPrimaryGenreFREETOPLAY string = "FREETOPLAY"

	// FullAppInfoPrimaryGenreINDIE captures enum value "INDIE"
	FullAppInfoPrimaryGenreINDIE string = "INDIE"

	// FullAppInfoPrimaryGenreMASSIVELYMULTIPLAYER captures enum value "MASSIVELYMULTIPLAYER"
	FullAppInfoPrimaryGenreMASSIVELYMULTIPLAYER string = "MASSIVELYMULTIPLAYER"

	// FullAppInfoPrimaryGenreRPG captures enum value "RPG"
	FullAppInfoPrimaryGenreRPG string = "RPG"

	// FullAppInfoPrimaryGenreRACING captures enum value "RACING"
	FullAppInfoPrimaryGenreRACING string = "RACING"

	// FullAppInfoPrimaryGenreSIMULATION captures enum value "SIMULATION"
	FullAppInfoPrimaryGenreSIMULATION string = "SIMULATION"

	// FullAppInfoPrimaryGenreSPORTS captures enum value "SPORTS"
	FullAppInfoPrimaryGenreSPORTS string = "SPORTS"

	// FullAppInfoPrimaryGenreSTRATEGY captures enum value "STRATEGY"
	FullAppInfoPrimaryGenreSTRATEGY string = "STRATEGY"
)

// prop value enum
func (m *FullAppInfo) validatePrimaryGenreEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullAppInfoTypePrimaryGenrePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FullAppInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FullAppInfo) UnmarshalBinary(b []byte) error {
	var res FullAppInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
