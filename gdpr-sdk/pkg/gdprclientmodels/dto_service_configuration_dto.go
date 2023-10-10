// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOServiceConfigurationDTO Dto service configuration DTO
//
// swagger:model Dto service configuration DTO.
type DTOServiceConfigurationDTO struct {

	// extend configuration detail, required when "type" is "EXTEND"
	ExtendConfig *DTOExtendConfigDTO `json:"extendConfig,omitempty"`

	// service id
	// Required: true
	ID *string `json:"id"`

	// service configuration detail, required when "type" is "SERVICE"
	ServiceConfig *DTOServiceConfigDTO `json:"serviceConfig,omitempty"`

	// service type
	// Enum: ['EXTEND', 'SERVICE']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Dto service configuration DTO
func (m *DTOServiceConfigurationDTO) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOServiceConfigurationDTO) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var dtoServiceConfigurationDtoTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EXTEND", "SERVICE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dtoServiceConfigurationDtoTypeTypePropEnum = append(dtoServiceConfigurationDtoTypeTypePropEnum, v)
	}
}

const (

	// DTOServiceConfigurationDTOTypeEXTEND captures enum value "EXTEND"
	DTOServiceConfigurationDTOTypeEXTEND string = "EXTEND"

	// DTOServiceConfigurationDTOTypeSERVICE captures enum value "SERVICE"
	DTOServiceConfigurationDTOTypeSERVICE string = "SERVICE"
)

// prop value enum
func (m *DTOServiceConfigurationDTO) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dtoServiceConfigurationDtoTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DTOServiceConfigurationDTO) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOServiceConfigurationDTO) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOServiceConfigurationDTO) UnmarshalBinary(b []byte) error {
	var res DTOServiceConfigurationDTO
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
