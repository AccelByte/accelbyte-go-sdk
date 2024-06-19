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

// DTOServiceConfigDTO Dto service config DTO
//
// swagger:model Dto service config DTO.
type DTOServiceConfigDTO struct {

	// protocol type
	// Enum: ['EVENT', 'GRPC']
	// Required: true
	Protocol *string `json:"protocol"`

	// skip waiting for ack event from this service, used in "EVENT" protocol only.
	SkipAck bool `json:"skipAck"`

	// url of the service with port number, required in "GRPC" protocol
	URL string `json:"url,omitempty"`
}

// Validate validates this Dto service config DTO
func (m *DTOServiceConfigDTO) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateProtocol(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var dtoServiceConfigDtoTypeProtocolPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["EVENT", "GRPC"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dtoServiceConfigDtoTypeProtocolPropEnum = append(dtoServiceConfigDtoTypeProtocolPropEnum, v)
	}
}

const (

	// DTOServiceConfigDTOProtocolEVENT captures enum value "EVENT"
	DTOServiceConfigDTOProtocolEVENT string = "EVENT"

	// DTOServiceConfigDTOProtocolGRPC captures enum value "GRPC"
	DTOServiceConfigDTOProtocolGRPC string = "GRPC"
)

// prop value enum
func (m *DTOServiceConfigDTO) validateProtocolEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dtoServiceConfigDtoTypeProtocolPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DTOServiceConfigDTO) validateProtocol(formats strfmt.Registry) error {

	if err := validate.Required("protocol", "body", m.Protocol); err != nil {
		return err
	}

	// value enum
	if err := m.validateProtocolEnum("protocol", "body", *m.Protocol); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOServiceConfigDTO) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOServiceConfigDTO) UnmarshalBinary(b []byte) error {
	var res DTOServiceConfigDTO
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
