// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIInstanceType Api instance type
//
// swagger:model Api instance type.
type APIInstanceType struct {

	// capacity
	// Required: true
	Capacity []*APICapacity `json:"capacity"`

	// description
	// Required: true
	Description *string `json:"description"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isbaremetal
	// Required: true
	IsBaremetal *bool `json:"isBaremetal"`

	// memorygib
	// Required: true
	// Format: double
	MemoryGiB *float64 `json:"memoryGiB"`

	// minspeed
	// Required: true
	MinSpeed *string `json:"minSpeed"`

	// name
	// Required: true
	Name *string `json:"name"`

	// owneraccountid
	// Required: true
	OwnerAccountID *string `json:"ownerAccountId"`

	// provider
	// Required: true
	Provider *string `json:"provider"`

	// virtualcpu
	// Required: true
	// Format: int32
	VirtualCPU *int32 `json:"virtualCpu"`
}

// Validate validates this Api instance type
func (m *APIInstanceType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCapacity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsBaremetal(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMemoryGiB(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMinSpeed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOwnerAccountID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProvider(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVirtualCPU(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIInstanceType) validateCapacity(formats strfmt.Registry) error {

	if err := validate.Required("capacity", "body", m.Capacity); err != nil {
		return err
	}

	for i := 0; i < len(m.Capacity); i++ {
		if swag.IsZero(m.Capacity[i]) { // not required
			continue
		}

		if m.Capacity[i] != nil {
			if err := m.Capacity[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("capacity" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *APIInstanceType) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateIsBaremetal(formats strfmt.Registry) error {

	if err := validate.Required("isBaremetal", "body", m.IsBaremetal); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateMemoryGiB(formats strfmt.Registry) error {

	if err := validate.Required("memoryGiB", "body", m.MemoryGiB); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateMinSpeed(formats strfmt.Registry) error {

	if err := validate.Required("minSpeed", "body", m.MinSpeed); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateOwnerAccountID(formats strfmt.Registry) error {

	if err := validate.Required("ownerAccountId", "body", m.OwnerAccountID); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateProvider(formats strfmt.Registry) error {

	if err := validate.Required("provider", "body", m.Provider); err != nil {
		return err
	}

	return nil
}

func (m *APIInstanceType) validateVirtualCPU(formats strfmt.Registry) error {

	if err := validate.Required("virtualCpu", "body", m.VirtualCPU); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIInstanceType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIInstanceType) UnmarshalBinary(b []byte) error {
	var res APIInstanceType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
