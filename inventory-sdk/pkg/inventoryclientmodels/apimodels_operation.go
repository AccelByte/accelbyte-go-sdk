// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsOperation Apimodels operation
//
// swagger:model Apimodels operation.
type ApimodelsOperation struct {

	// consumeitems
	// Required: true
	ConsumeItems []*ApimodelsConsumeItem `json:"consumeItems"`

	// createitems
	// Required: true
	CreateItems []*ApimodelsCreateItem `json:"createItems"`

	// removeitems
	// Required: true
	RemoveItems []*ApimodelsRemoveItem `json:"removeItems"`

	// targetuserid
	// Required: true
	TargetUserID *string `json:"targetUserId"`

	// updateitems
	// Required: true
	UpdateItems []*ApimodelsUpdateItem `json:"updateItems"`
}

// Validate validates this Apimodels operation
func (m *ApimodelsOperation) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateConsumeItems(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreateItems(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemoveItems(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdateItems(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsOperation) validateConsumeItems(formats strfmt.Registry) error {

	if err := validate.Required("consumeItems", "body", m.ConsumeItems); err != nil {
		return err
	}

	for i := 0; i < len(m.ConsumeItems); i++ {
		if swag.IsZero(m.ConsumeItems[i]) { // not required
			continue
		}

		if m.ConsumeItems[i] != nil {
			if err := m.ConsumeItems[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("consumeItems" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsOperation) validateCreateItems(formats strfmt.Registry) error {

	if err := validate.Required("createItems", "body", m.CreateItems); err != nil {
		return err
	}

	for i := 0; i < len(m.CreateItems); i++ {
		if swag.IsZero(m.CreateItems[i]) { // not required
			continue
		}

		if m.CreateItems[i] != nil {
			if err := m.CreateItems[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("createItems" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsOperation) validateRemoveItems(formats strfmt.Registry) error {

	if err := validate.Required("removeItems", "body", m.RemoveItems); err != nil {
		return err
	}

	for i := 0; i < len(m.RemoveItems); i++ {
		if swag.IsZero(m.RemoveItems[i]) { // not required
			continue
		}

		if m.RemoveItems[i] != nil {
			if err := m.RemoveItems[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("removeItems" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsOperation) validateTargetUserID(formats strfmt.Registry) error {

	if err := validate.Required("targetUserId", "body", m.TargetUserID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsOperation) validateUpdateItems(formats strfmt.Registry) error {

	if err := validate.Required("updateItems", "body", m.UpdateItems); err != nil {
		return err
	}

	for i := 0; i < len(m.UpdateItems); i++ {
		if swag.IsZero(m.UpdateItems[i]) { // not required
			continue
		}

		if m.UpdateItems[i] != nil {
			if err := m.UpdateItems[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("updateItems" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsOperation) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsOperation) UnmarshalBinary(b []byte) error {
	var res ApimodelsOperation
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
