// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AppUpdate app update
//
// swagger:model AppUpdate
type AppUpdate struct {

	// carousel
	Carousel []*Slide `json:"carousel"`

	// developer, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators, these symbols ',.-, and white-space, max length is 48
	Developer string `json:"developer,omitempty"`

	// forum url, max length 2000
	ForumURL string `json:"forumUrl,omitempty"`

	// genres
	Genres []string `json:"genres"`

	// localizations
	Localizations map[string]AppLocalization `json:"localizations,omitempty"`

	// platform requirements
	PlatformRequirements map[string][]Requirement `json:"platformRequirements,omitempty"`

	// supported platforms
	Platforms []string `json:"platforms"`

	// players
	Players []string `json:"players"`

	// primary genre
	// Enum: [Action Adventure Casual FreeToPlay Indie MassivelyMultiplayer Racing RPG Simulation Sports Strategy]
	PrimaryGenre string `json:"primaryGenre,omitempty"`

	// publisher, it should starts and ends with alphabets uppercase/lowercase or numeric, allowed separators, these symbols ',.-, and white-space, max length is 48
	Publisher string `json:"publisher,omitempty"`

	// release date in format yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	ReleaseDate strfmt.DateTime `json:"releaseDate,omitempty"`

	// website url, max length is 2000
	WebsiteURL string `json:"websiteUrl,omitempty"`
}

// Validate validates this app update
func (m *AppUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCarousel(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateGenres(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLocalizations(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlatformRequirements(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlatforms(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlayers(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePrimaryGenre(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateReleaseDate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AppUpdate) validateCarousel(formats strfmt.Registry) error {

	if swag.IsZero(m.Carousel) { // not required
		return nil
	}

	for i := 0; i < len(m.Carousel); i++ {
		if swag.IsZero(m.Carousel[i]) { // not required
			continue
		}

		if m.Carousel[i] != nil {
			if err := m.Carousel[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("carousel" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var appUpdateGenresItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Action","Adventure","Casual","FreeToPlay","Indie","MassivelyMultiplayer","Racing","RPG","Simulation","Sports","Strategy"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateGenresItemsEnum = append(appUpdateGenresItemsEnum, v)
	}
}

func (m *AppUpdate) validateGenresItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateGenresItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppUpdate) validateGenres(formats strfmt.Registry) error {

	if swag.IsZero(m.Genres) { // not required
		return nil
	}

	for i := 0; i < len(m.Genres); i++ {

		// value enum
		if err := m.validateGenresItemsEnum("genres"+"."+strconv.Itoa(i), "body", m.Genres[i]); err != nil {
			return err
		}

	}

	return nil
}

func (m *AppUpdate) validateLocalizations(formats strfmt.Registry) error {

	if swag.IsZero(m.Localizations) { // not required
		return nil
	}

	for k := range m.Localizations {

		if err := validate.Required("localizations"+"."+k, "body", m.Localizations[k]); err != nil {
			return err
		}
		if val, ok := m.Localizations[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *AppUpdate) validatePlatformRequirements(formats strfmt.Registry) error {

	if swag.IsZero(m.PlatformRequirements) { // not required
		return nil
	}

	for k := range m.PlatformRequirements {

		if err := validate.Required("platformRequirements"+"."+k, "body", m.PlatformRequirements[k]); err != nil {
			return err
		}

		for i := 0; i < len(m.PlatformRequirements[k]); i++ {

			if err := m.PlatformRequirements[k][i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platformRequirements" + "." + k + "." + strconv.Itoa(i))
				}
				return err
			}

		}

	}

	return nil
}

var appUpdatePlatformsItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Windows","MacOS","Linux","IOS","Android"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdatePlatformsItemsEnum = append(appUpdatePlatformsItemsEnum, v)
	}
}

func (m *AppUpdate) validatePlatformsItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdatePlatformsItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppUpdate) validatePlatforms(formats strfmt.Registry) error {

	if swag.IsZero(m.Platforms) { // not required
		return nil
	}

	for i := 0; i < len(m.Platforms); i++ {

		// value enum
		if err := m.validatePlatformsItemsEnum("platforms"+"."+strconv.Itoa(i), "body", m.Platforms[i]); err != nil {
			return err
		}

	}

	return nil
}

var appUpdatePlayersItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Single","Multi","CrossPlatformMulti","MMO","Coop","LocalCoop"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdatePlayersItemsEnum = append(appUpdatePlayersItemsEnum, v)
	}
}

func (m *AppUpdate) validatePlayersItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdatePlayersItemsEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppUpdate) validatePlayers(formats strfmt.Registry) error {

	if swag.IsZero(m.Players) { // not required
		return nil
	}

	for i := 0; i < len(m.Players); i++ {

		// value enum
		if err := m.validatePlayersItemsEnum("players"+"."+strconv.Itoa(i), "body", m.Players[i]); err != nil {
			return err
		}

	}

	return nil
}

var appUpdateTypePrimaryGenrePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Action","Adventure","Casual","FreeToPlay","Indie","MassivelyMultiplayer","Racing","RPG","Simulation","Sports","Strategy"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		appUpdateTypePrimaryGenrePropEnum = append(appUpdateTypePrimaryGenrePropEnum, v)
	}
}

const (

	// AppUpdatePrimaryGenreAction captures enum value "Action"
	AppUpdatePrimaryGenreAction string = "Action"

	// AppUpdatePrimaryGenreAdventure captures enum value "Adventure"
	AppUpdatePrimaryGenreAdventure string = "Adventure"

	// AppUpdatePrimaryGenreCasual captures enum value "Casual"
	AppUpdatePrimaryGenreCasual string = "Casual"

	// AppUpdatePrimaryGenreFreeToPlay captures enum value "FreeToPlay"
	AppUpdatePrimaryGenreFreeToPlay string = "FreeToPlay"

	// AppUpdatePrimaryGenreIndie captures enum value "Indie"
	AppUpdatePrimaryGenreIndie string = "Indie"

	// AppUpdatePrimaryGenreMassivelyMultiplayer captures enum value "MassivelyMultiplayer"
	AppUpdatePrimaryGenreMassivelyMultiplayer string = "MassivelyMultiplayer"

	// AppUpdatePrimaryGenreRacing captures enum value "Racing"
	AppUpdatePrimaryGenreRacing string = "Racing"

	// AppUpdatePrimaryGenreRPG captures enum value "RPG"
	AppUpdatePrimaryGenreRPG string = "RPG"

	// AppUpdatePrimaryGenreSimulation captures enum value "Simulation"
	AppUpdatePrimaryGenreSimulation string = "Simulation"

	// AppUpdatePrimaryGenreSports captures enum value "Sports"
	AppUpdatePrimaryGenreSports string = "Sports"

	// AppUpdatePrimaryGenreStrategy captures enum value "Strategy"
	AppUpdatePrimaryGenreStrategy string = "Strategy"
)

// prop value enum
func (m *AppUpdate) validatePrimaryGenreEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, appUpdateTypePrimaryGenrePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *AppUpdate) validatePrimaryGenre(formats strfmt.Registry) error {

	if swag.IsZero(m.PrimaryGenre) { // not required
		return nil
	}

	// value enum
	if err := m.validatePrimaryGenreEnum("primaryGenre", "body", m.PrimaryGenre); err != nil {
		return err
	}

	return nil
}

func (m *AppUpdate) validateReleaseDate(formats strfmt.Registry) error {

	if swag.IsZero(m.ReleaseDate) { // not required
		return nil
	}

	if err := validate.FormatOf("releaseDate", "body", "date-time", m.ReleaseDate.String(), formats); err != nil {
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
