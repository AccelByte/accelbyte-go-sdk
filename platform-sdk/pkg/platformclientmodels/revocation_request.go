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

// RevocationRequest revocation request
//
// swagger:model RevocationRequest
type RevocationRequest struct {

	// source meta info, like DLC transaction id, order no.
	Meta map[string]interface{} `json:"meta,omitempty"`

	// revoke entries
	RevokeEntries []*RevokeEntry `json:"revokeEntries"`

	// revoke source
	// Enum: [DLC ORDER OTHER]
	Source string `json:"source,omitempty"`

	// transaction id: DLC Order No, Order No.
	TransactionID string `json:"transactionId,omitempty"`
}

// Validate validates this revocation request
func (m *RevocationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRevokeEntries(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSource(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RevocationRequest) validateRevokeEntries(formats strfmt.Registry) error {

	if swag.IsZero(m.RevokeEntries) { // not required
		return nil
	}

	for i := 0; i < len(m.RevokeEntries); i++ {
		if swag.IsZero(m.RevokeEntries[i]) { // not required
			continue
		}

		if m.RevokeEntries[i] != nil {
			if err := m.RevokeEntries[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("revokeEntries" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

var revocationRequestTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DLC","ORDER","OTHER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revocationRequestTypeSourcePropEnum = append(revocationRequestTypeSourcePropEnum, v)
	}
}

const (

	// RevocationRequestSourceDLC captures enum value "DLC"
	RevocationRequestSourceDLC string = "DLC"

	// RevocationRequestSourceORDER captures enum value "ORDER"
	RevocationRequestSourceORDER string = "ORDER"

	// RevocationRequestSourceOTHER captures enum value "OTHER"
	RevocationRequestSourceOTHER string = "OTHER"
)

// prop value enum
func (m *RevocationRequest) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revocationRequestTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RevocationRequest) validateSource(formats strfmt.Registry) error {

	if swag.IsZero(m.Source) { // not required
		return nil
	}

	// value enum
	if err := m.validateSourceEnum("source", "body", m.Source); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RevocationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevocationRequest) UnmarshalBinary(b []byte) error {
	var res RevocationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}