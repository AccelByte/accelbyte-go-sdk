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

// DTOFinishedDataRequest Dto finished data request
//
// swagger:model Dto finished data request.
type DTOFinishedDataRequest struct {

	// The expiration date of generated data, it was 28 days after finishedDate. Available only if the status is Completed
	// Format: date-time
	DataExpirationDate *strfmt.DateTime `json:"dataExpirationDate,omitempty"`

	// Failed message if status is Failed
	FailedMessage string `json:"failedMessage,omitempty"`

	// Finished date
	// Required: true
	// Format: date-time
	FinishedDate strfmt.DateTime `json:"finishedDate"`

	// Request date
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"requestDate"`

	// Request id
	// Required: true
	RequestID *string `json:"requestId"`

	// Status of request
	// Enum: ['Completed', 'Failed']
	// Required: true
	Status *string `json:"status"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Dto finished data request
func (m *DTOFinishedDataRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFinishedDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOFinishedDataRequest) validateFinishedDate(formats strfmt.Registry) error {

	if err := validate.Required("finishedDate", "body", strfmt.DateTime(m.FinishedDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("finishedDate", "body", "date-time", m.FinishedDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *DTOFinishedDataRequest) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("requestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("requestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *DTOFinishedDataRequest) validateRequestID(formats strfmt.Registry) error {

	if err := validate.Required("requestId", "body", m.RequestID); err != nil {
		return err
	}

	return nil
}

var dtoFinishedDataRequestTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COMPLETED", "FAILED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		dtoFinishedDataRequestTypeStatusPropEnum = append(dtoFinishedDataRequestTypeStatusPropEnum, v)
	}
}

const (

	// DTOFinishedDataRequestStatusCOMPLETED captures enum value "COMPLETED"
	DTOFinishedDataRequestStatusCOMPLETED string = "COMPLETED"

	// DTOFinishedDataRequestStatusFAILED captures enum value "FAILED"
	DTOFinishedDataRequestStatusFAILED string = "FAILED"
)

// prop value enum
func (m *DTOFinishedDataRequest) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, dtoFinishedDataRequestTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *DTOFinishedDataRequest) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *DTOFinishedDataRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOFinishedDataRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOFinishedDataRequest) UnmarshalBinary(b []byte) error {
	var res DTOFinishedDataRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
