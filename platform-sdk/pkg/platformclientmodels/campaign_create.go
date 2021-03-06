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

// CampaignCreate A DTO object for creating campaign API call.
//
// swagger:model CampaignCreate
type CampaignCreate struct {

	// The description of the campaign, max length is 1024 characters
	Description string `json:"description,omitempty"`

	// Redeemable items
	Items []*RedeemableItem `json:"items"`

	// The maximum redeem count per campaign per user, must equal or greater than -1, -1 means UNLIMITED, default is 1
	MaxRedeemCountPerCampaignPerUser int32 `json:"maxRedeemCountPerCampaignPerUser,omitempty"`

	// The maximum redeem count per code, must equal or greater than -1, -1 means UNLIMITED, default is 1
	MaxRedeemCountPerCode int32 `json:"maxRedeemCountPerCode,omitempty"`

	// The maximum redeem count per code per user, must equal or greater than -1, -1 means UNLIMITED, default is 1
	MaxRedeemCountPerCodePerUser int32 `json:"maxRedeemCountPerCodePerUser,omitempty"`

	// Max sale count, -1 means UNLIMITED
	MaxSaleCount int32 `json:"maxSaleCount,omitempty"`

	// The name of the campaign, it should starts and ends with alphabets uppercase/lowercase or numeric
	// Allowed separators ',.- and white-space, max length is 48
	// Required: true
	Name *string `json:"name"`

	// redeem end time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	RedeemEnd *strfmt.DateTime `json:"redeemEnd,omitempty"`

	// redeem start time in yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	RedeemStart *strfmt.DateTime `json:"redeemStart,omitempty"`

	// Redeem Type. Allowed values: ITEM. ITEM for default
	// Enum: [ITEM]
	RedeemType string `json:"redeemType,omitempty"`

	// The status of the campaign, default ACTIVE
	// Enum: [ACTIVE INACTIVE]
	Status string `json:"status,omitempty"`

	// The tags of the campaign
	Tags []string `json:"tags"`

	// Campaign type. Allowed values: REDEMPTION. REDEMPTION for default
	// Enum: [REDEMPTION]
	Type string `json:"type,omitempty"`
}

// Validate validates this campaign create
func (m *CampaignCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItems(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRedeemEnd(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRedeemStart(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRedeemType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStatus(formats); err != nil {
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

func (m *CampaignCreate) validateItems(formats strfmt.Registry) error {

	if swag.IsZero(m.Items) { // not required
		return nil
	}

	for i := 0; i < len(m.Items); i++ {
		if swag.IsZero(m.Items[i]) { // not required
			continue
		}

		if m.Items[i] != nil {
			if err := m.Items[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("items" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *CampaignCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *CampaignCreate) validateRedeemEnd(formats strfmt.Registry) error {

	if swag.IsZero(m.RedeemEnd) { // not required
		return nil
	}

	if err := validate.FormatOf("redeemEnd", "body", "date-time", m.RedeemEnd.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *CampaignCreate) validateRedeemStart(formats strfmt.Registry) error {

	if swag.IsZero(m.RedeemStart) { // not required
		return nil
	}

	if err := validate.FormatOf("redeemStart", "body", "date-time", m.RedeemStart.String(), formats); err != nil {
		return err
	}

	return nil
}

var campaignCreateTypeRedeemTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeRedeemTypePropEnum = append(campaignCreateTypeRedeemTypePropEnum, v)
	}
}

const (

	// CampaignCreateRedeemTypeITEM captures enum value "ITEM"
	CampaignCreateRedeemTypeITEM string = "ITEM"
)

// prop value enum
func (m *CampaignCreate) validateRedeemTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeRedeemTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignCreate) validateRedeemType(formats strfmt.Registry) error {

	if swag.IsZero(m.RedeemType) { // not required
		return nil
	}

	// value enum
	if err := m.validateRedeemTypeEnum("redeemType", "body", m.RedeemType); err != nil {
		return err
	}

	return nil
}

var campaignCreateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeStatusPropEnum = append(campaignCreateTypeStatusPropEnum, v)
	}
}

const (

	// CampaignCreateStatusACTIVE captures enum value "ACTIVE"
	CampaignCreateStatusACTIVE string = "ACTIVE"

	// CampaignCreateStatusINACTIVE captures enum value "INACTIVE"
	CampaignCreateStatusINACTIVE string = "INACTIVE"
)

// prop value enum
func (m *CampaignCreate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignCreate) validateStatus(formats strfmt.Registry) error {

	if swag.IsZero(m.Status) { // not required
		return nil
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

var campaignCreateTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["REDEMPTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		campaignCreateTypeTypePropEnum = append(campaignCreateTypeTypePropEnum, v)
	}
}

const (

	// CampaignCreateTypeREDEMPTION captures enum value "REDEMPTION"
	CampaignCreateTypeREDEMPTION string = "REDEMPTION"
)

// prop value enum
func (m *CampaignCreate) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, campaignCreateTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *CampaignCreate) validateType(formats strfmt.Registry) error {

	if swag.IsZero(m.Type) { // not required
		return nil
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *CampaignCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CampaignCreate) UnmarshalBinary(b []byte) error {
	var res CampaignCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
