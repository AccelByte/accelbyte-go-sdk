// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsStagingContentResponse Models staging content response
//
// swagger:model Models staging content response.
type ModelsStagingContentResponse struct {

	// channelid
	// Required: true
	ChannelID *string `json:"channelId"`

	// createdtime
	// Required: true
	// Format: date-time
	CreatedTime strfmt.DateTime `json:"createdTime"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// note
	Note string `json:"note,omitempty"`

	// payloadurl
	PayloadURL string `json:"payloadURL,omitempty"`

	// screenshots
	Screenshots []*ModelsScreenshotResponse `json:"screenshots,omitempty"`

	// status
	// Enum: ['APPROVED', 'PENDING', 'REJECTED']
	// Required: true
	Status *string `json:"status"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	Type string `json:"type,omitempty"`

	// updatedtime
	// Format: date-time
	UpdatedTime *strfmt.DateTime `json:"updatedTime,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models staging content response
func (m *ModelsStagingContentResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannelID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
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

func (m *ModelsStagingContentResponse) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", strfmt.DateTime(m.CreatedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var modelsStagingContentResponseTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["APPROVED", "PENDING", "REJECTED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		modelsStagingContentResponseTypeStatusPropEnum = append(modelsStagingContentResponseTypeStatusPropEnum, v)
	}
}

const (

	// ModelsStagingContentResponseStatusAPPROVED captures enum value "APPROVED"
	ModelsStagingContentResponseStatusAPPROVED string = "APPROVED"

	// ModelsStagingContentResponseStatusPENDING captures enum value "PENDING"
	ModelsStagingContentResponseStatusPENDING string = "PENDING"

	// ModelsStagingContentResponseStatusREJECTED captures enum value "REJECTED"
	ModelsStagingContentResponseStatusREJECTED string = "REJECTED"
)

// prop value enum
func (m *ModelsStagingContentResponse) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, modelsStagingContentResponseTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ModelsStagingContentResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsStagingContentResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsStagingContentResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsStagingContentResponse) UnmarshalBinary(b []byte) error {
	var res ModelsStagingContentResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
