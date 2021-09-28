// Code generated by go-swagger; DO NOT EDIT.

package ugcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsContentDownloadResponse models content download response
//
// swagger:model models.ContentDownloadResponse
type ModelsContentDownloadResponse struct {

	// channel Id
	// Required: true
	ChannelID *string `json:"channelId"`

	// created time
	// Required: true
	CreatedTime *string `json:"createdTime"`

	// creator follow state
	// Required: true
	CreatorFollowState *ModelsCreatorFollowState `json:"creatorFollowState"`

	// creator name
	// Required: true
	CreatorName *string `json:"creatorName"`

	// download count
	// Required: true
	DownloadCount *int32 `json:"downloadCount"`

	// file extension
	// Required: true
	FileExtension *string `json:"fileExtension"`

	// groups
	Groups []string `json:"groups"`

	// id
	// Required: true
	ID *string `json:"id"`

	// is hidden
	// Required: true
	IsHidden *bool `json:"isHidden"`

	// is official
	// Required: true
	IsOfficial *bool `json:"isOfficial"`

	// like count
	// Required: true
	LikeCount *int32 `json:"likeCount"`

	// like state
	LikeState *ModelsLikeState `json:"likeState,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// payload
	Payload string `json:"payload,omitempty"`

	// payload URL
	PayloadURL []*ModelsPayloadURL `json:"payloadURL"`

	// share code
	// Required: true
	ShareCode *string `json:"shareCode"`

	// sub type
	// Required: true
	SubType *string `json:"subType"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`

	// user Id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this models content download response
func (m *ModelsContentDownloadResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChannelID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatorFollowState(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCreatorName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDownloadCount(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFileExtension(formats); err != nil {
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

	if err := m.validateLikeCount(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLikeState(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePayloadURL(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateShareCode(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSubType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateType(formats); err != nil {
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

func (m *ModelsContentDownloadResponse) validateChannelID(formats strfmt.Registry) error {

	if err := validate.Required("channelId", "body", m.ChannelID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", m.CreatedTime); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateCreatorFollowState(formats strfmt.Registry) error {

	if err := validate.Required("creatorFollowState", "body", m.CreatorFollowState); err != nil {
		return err
	}

	if m.CreatorFollowState != nil {
		if err := m.CreatorFollowState.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("creatorFollowState")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateCreatorName(formats strfmt.Registry) error {

	if err := validate.Required("creatorName", "body", m.CreatorName); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateDownloadCount(formats strfmt.Registry) error {

	if err := validate.Required("downloadCount", "body", m.DownloadCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateIsOfficial(formats strfmt.Registry) error {

	if err := validate.Required("isOfficial", "body", m.IsOfficial); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateLikeCount(formats strfmt.Registry) error {

	if err := validate.Required("likeCount", "body", m.LikeCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateLikeState(formats strfmt.Registry) error {

	if swag.IsZero(m.LikeState) { // not required
		return nil
	}

	if m.LikeState != nil {
		if err := m.LikeState.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("likeState")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validatePayloadURL(formats strfmt.Registry) error {

	if swag.IsZero(m.PayloadURL) { // not required
		return nil
	}

	for i := 0; i < len(m.PayloadURL); i++ {
		if swag.IsZero(m.PayloadURL[i]) { // not required
			continue
		}

		if m.PayloadURL[i] != nil {
			if err := m.PayloadURL[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("payloadURL" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloadResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentDownloadResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentDownloadResponse) UnmarshalBinary(b []byte) error {
	var res ModelsContentDownloadResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
