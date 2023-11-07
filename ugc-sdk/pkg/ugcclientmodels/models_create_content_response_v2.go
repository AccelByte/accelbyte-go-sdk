// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreateContentResponseV2 Models create content response V2
//
// swagger:model Models create content response V2.
type ModelsCreateContentResponseV2 struct {

	// channelid
	// Required: true
	ChannelID *string `json:"channelId"`

	// S3 content type
	ContentType string `json:"contentType,omitempty"`

	// createdtime
	// Required: true
	CreatedTime *string `json:"createdTime"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// filelocation
	// Required: true
	FileLocation *string `json:"fileLocation"`

	// id
	// Required: true
	ID *string `json:"id"`

	// ishidden
	// Required: true
	IsHidden *bool `json:"isHidden"`

	// isofficial
	// Required: true
	IsOfficial *bool `json:"isOfficial"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// parentnamespace
	// Required: true
	ParentNamespace *string `json:"parentNamespace"`

	// payloadurl
	PayloadURL []*ModelsPayloadURL `json:"payloadURL,omitempty"`

	// sharecode
	// Required: true
	ShareCode *string `json:"shareCode"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	Type string `json:"type,omitempty"`

	// updatedtime
	UpdatedTime string `json:"updatedTime,omitempty"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models create content response V2
func (m *ModelsCreateContentResponseV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannelID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFileLocation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsHidden(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsOfficial(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateParentNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateShareCode(formats); err != nil {
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

func (m *ModelsCreateContentResponseV2) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", m.CreatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateFileLocation(formats strfmt.Registry) error {

	if err := validate.Required("fileLocation", "body", m.FileLocation); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateIsOfficial(formats strfmt.Registry) error {

	if err := validate.Required("isOfficial", "body", m.IsOfficial); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateParentNamespace(formats strfmt.Registry) error {

	if err := validate.Required("parentNamespace", "body", m.ParentNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreateContentResponseV2) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreateContentResponseV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreateContentResponseV2) UnmarshalBinary(b []byte) error {
	var res ModelsCreateContentResponseV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
