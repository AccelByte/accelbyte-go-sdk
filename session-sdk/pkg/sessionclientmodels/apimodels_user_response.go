// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUserResponse Apimodels user response
//
// swagger:model Apimodels user response.
type ApimodelsUserResponse struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformID"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`

	// previousstatus
	PreviousStatus string `json:"previousStatus,omitempty"`

	// status
	// Enum: ['CONNECTED', 'INVITED', 'JOINED', 'KICKED', 'LEFT', 'REJECTED']
	// Required: true
	Status *string `json:"status"`

	// statusv2
	// Enum: ['CANCELLED', 'CONNECTED', 'DISCONNECTED', 'DROPPED', 'INVITED', 'JOINED', 'KICKED', 'LEFT', 'REJECTED', 'TERMINATED', 'TIMEOUT']
	// Required: true
	StatusV2 *string `json:"statusV2"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Apimodels user response
func (m *ApimodelsUserResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusV2(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUserResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

var apimodelsUserResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CONNECTED", "INVITED", "JOINED", "KICKED", "LEFT", "REJECTED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUserResponseTypeStatusPropEnum = append(apimodelsUserResponseTypeStatusPropEnum, v)
	}
}

const (

	// ApimodelsUserResponseStatusCONNECTED captures enum value "CONNECTED"
	ApimodelsUserResponseStatusCONNECTED string = "CONNECTED"

	// ApimodelsUserResponseStatusINVITED captures enum value "INVITED"
	ApimodelsUserResponseStatusINVITED string = "INVITED"

	// ApimodelsUserResponseStatusJOINED captures enum value "JOINED"
	ApimodelsUserResponseStatusJOINED string = "JOINED"

	// ApimodelsUserResponseStatusKICKED captures enum value "KICKED"
	ApimodelsUserResponseStatusKICKED string = "KICKED"

	// ApimodelsUserResponseStatusLEFT captures enum value "LEFT"
	ApimodelsUserResponseStatusLEFT string = "LEFT"

	// ApimodelsUserResponseStatusREJECTED captures enum value "REJECTED"
	ApimodelsUserResponseStatusREJECTED string = "REJECTED"
)

// prop value enum
func (m *ApimodelsUserResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUserResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUserResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

var apimodelsUserResponseTypeStatusV2PropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CANCELLED", "CONNECTED", "DISCONNECTED", "DROPPED", "INVITED", "JOINED", "KICKED", "LEFT", "REJECTED", "TERMINATED", "TIMEOUT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsUserResponseTypeStatusV2PropEnum = append(apimodelsUserResponseTypeStatusV2PropEnum, v)
	}
}

const (

	// ApimodelsUserResponseStatusV2CANCELLED captures enum value "CANCELLED"
	ApimodelsUserResponseStatusV2CANCELLED string = "CANCELLED"

	// ApimodelsUserResponseStatusV2CONNECTED captures enum value "CONNECTED"
	ApimodelsUserResponseStatusV2CONNECTED string = "CONNECTED"

	// ApimodelsUserResponseStatusV2DISCONNECTED captures enum value "DISCONNECTED"
	ApimodelsUserResponseStatusV2DISCONNECTED string = "DISCONNECTED"

	// ApimodelsUserResponseStatusV2DROPPED captures enum value "DROPPED"
	ApimodelsUserResponseStatusV2DROPPED string = "DROPPED"

	// ApimodelsUserResponseStatusV2INVITED captures enum value "INVITED"
	ApimodelsUserResponseStatusV2INVITED string = "INVITED"

	// ApimodelsUserResponseStatusV2JOINED captures enum value "JOINED"
	ApimodelsUserResponseStatusV2JOINED string = "JOINED"

	// ApimodelsUserResponseStatusV2KICKED captures enum value "KICKED"
	ApimodelsUserResponseStatusV2KICKED string = "KICKED"

	// ApimodelsUserResponseStatusV2LEFT captures enum value "LEFT"
	ApimodelsUserResponseStatusV2LEFT string = "LEFT"

	// ApimodelsUserResponseStatusV2REJECTED captures enum value "REJECTED"
	ApimodelsUserResponseStatusV2REJECTED string = "REJECTED"

	// ApimodelsUserResponseStatusV2TERMINATED captures enum value "TERMINATED"
	ApimodelsUserResponseStatusV2TERMINATED string = "TERMINATED"

	// ApimodelsUserResponseStatusV2TIMEOUT captures enum value "TIMEOUT"
	ApimodelsUserResponseStatusV2TIMEOUT string = "TIMEOUT"
)

// prop value enum
func (m *ApimodelsUserResponse) validateStatusV2Enum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsUserResponseTypeStatusV2PropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsUserResponse) validateStatusV2(formats strfmt.Registry) error {

	if err := validate.Required("statusV2", "body", m.StatusV2); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusV2Enum("statusV2", "body", *m.StatusV2); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsUserResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUserResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUserResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsUserResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
