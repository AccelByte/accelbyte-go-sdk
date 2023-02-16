// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RevokeCurrency revoke currency
//
// swagger:model RevokeCurrency
type RevokeCurrency struct {

	// balance origin
	// Enum: [Epic GooglePlay IOS Nintendo Other Playstation Steam System Twitch Xbox]
	BalanceOrigin string `json:"balanceOrigin,omitempty"`

	// currency code
	CurrencyCode string `json:"currencyCode,omitempty"`

	// currency namespace
	Namespace string `json:"namespace,omitempty"`
}

// Validate validates this revoke currency
func (m *RevokeCurrency) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBalanceOrigin(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeCurrencyTypeBalanceOriginPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["Epic","GooglePlay","IOS","Nintendo","Other","Playstation","Steam","System","Twitch","Xbox"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeCurrencyTypeBalanceOriginPropEnum = append(revokeCurrencyTypeBalanceOriginPropEnum, v)
	}
}

const (

	// RevokeCurrencyBalanceOriginEpic captures enum value "Epic"
	RevokeCurrencyBalanceOriginEpic string = "Epic"

	// RevokeCurrencyBalanceOriginGooglePlay captures enum value "GooglePlay"
	RevokeCurrencyBalanceOriginGooglePlay string = "GooglePlay"

	// RevokeCurrencyBalanceOriginIOS captures enum value "IOS"
	RevokeCurrencyBalanceOriginIOS string = "IOS"

	// RevokeCurrencyBalanceOriginNintendo captures enum value "Nintendo"
	RevokeCurrencyBalanceOriginNintendo string = "Nintendo"

	// RevokeCurrencyBalanceOriginOther captures enum value "Other"
	RevokeCurrencyBalanceOriginOther string = "Other"

	// RevokeCurrencyBalanceOriginPlaystation captures enum value "Playstation"
	RevokeCurrencyBalanceOriginPlaystation string = "Playstation"

	// RevokeCurrencyBalanceOriginSteam captures enum value "Steam"
	RevokeCurrencyBalanceOriginSteam string = "Steam"

	// RevokeCurrencyBalanceOriginSystem captures enum value "System"
	RevokeCurrencyBalanceOriginSystem string = "System"

	// RevokeCurrencyBalanceOriginTwitch captures enum value "Twitch"
	RevokeCurrencyBalanceOriginTwitch string = "Twitch"

	// RevokeCurrencyBalanceOriginXbox captures enum value "Xbox"
	RevokeCurrencyBalanceOriginXbox string = "Xbox"
)

// prop value enum
func (m *RevokeCurrency) validateBalanceOriginEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeCurrencyTypeBalanceOriginPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RevokeCurrency) validateBalanceOrigin(formats strfmt.Registry) error {

	if swag.IsZero(m.BalanceOrigin) { // not required
		return nil
	}

	// value enum
	if err := m.validateBalanceOriginEnum("balanceOrigin", "body", m.BalanceOrigin); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RevokeCurrency) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeCurrency) UnmarshalBinary(b []byte) error {
	var res RevokeCurrency
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}