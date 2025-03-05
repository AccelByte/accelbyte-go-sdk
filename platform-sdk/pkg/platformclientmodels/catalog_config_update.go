// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// CatalogConfigUpdate Catalog config update
//
// swagger:model Catalog config update.
type CatalogConfigUpdate struct {

	// enable inventory check
	// Required: true
	EnableInventoryCheck *bool `json:"enableInventoryCheck"`

	// item deletion check configuration
	// Unique: true
	// Enum: ['CAMPAIGN', 'CATALOG', 'DLC', 'ENTITLEMENT', 'IAP', 'REWARD']
	ItemDeletionCheckConfig []string `json:"itemDeletionCheckConfig"`
}

// Validate validates this Catalog config update
func (m *CatalogConfigUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnableInventoryCheck(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CatalogConfigUpdate) validateEnableInventoryCheck(formats strfmt.Registry) error {

	if err := validate.Required("enableInventoryCheck", "body", m.EnableInventoryCheck); err != nil {
		return err
	}

	return nil
}

var catalogConfigUpdateTypeItemDeletionCheckConfigItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "CATALOG", "DLC", "ENTITLEMENT", "IAP", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogConfigUpdateTypeItemDeletionCheckConfigItemsEnum = append(catalogConfigUpdateTypeItemDeletionCheckConfigItemsEnum, v)
	}
}

const (

	// CatalogConfigUpdateItemDeletionCheckConfigCAMPAIGN captures enum value "CAMPAIGN"
	CatalogConfigUpdateItemDeletionCheckConfigCAMPAIGN string = "CAMPAIGN"

	// CatalogConfigUpdateItemDeletionCheckConfigCATALOG captures enum value "CATALOG"
	CatalogConfigUpdateItemDeletionCheckConfigCATALOG string = "CATALOG"

	// CatalogConfigUpdateItemDeletionCheckConfigDLC captures enum value "DLC"
	CatalogConfigUpdateItemDeletionCheckConfigDLC string = "DLC"

	// CatalogConfigUpdateItemDeletionCheckConfigENTITLEMENT captures enum value "ENTITLEMENT"
	CatalogConfigUpdateItemDeletionCheckConfigENTITLEMENT string = "ENTITLEMENT"

	// CatalogConfigUpdateItemDeletionCheckConfigIAP captures enum value "IAP"
	CatalogConfigUpdateItemDeletionCheckConfigIAP string = "IAP"

	// CatalogConfigUpdateItemDeletionCheckConfigREWARD captures enum value "REWARD"
	CatalogConfigUpdateItemDeletionCheckConfigREWARD string = "REWARD"
)

func (m *CatalogConfigUpdate) validateItemDeletionCheckConfigItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogConfigUpdateTypeItemDeletionCheckConfigItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CatalogConfigUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogConfigUpdate) UnmarshalBinary(b []byte) error {
	var res CatalogConfigUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
