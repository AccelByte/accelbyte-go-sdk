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

// CatalogConfigInfo Catalog config info
//
// swagger:model Catalog config info.
type CatalogConfigInfo struct {

	// enable inventory check
	// Required: true
	EnableInventoryCheck *bool `json:"enableInventoryCheck"`

	// item deletion check configuration
	// Unique: true
	// Enum: ['CAMPAIGN', 'CATALOG', 'DLC', 'ENTITLEMENT', 'IAP', 'REWARD']
	ItemDeletionCheckConfig []string `json:"itemDeletionCheckConfig"`
}

// Validate validates this Catalog config info
func (m *CatalogConfigInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnableInventoryCheck(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *CatalogConfigInfo) validateEnableInventoryCheck(formats strfmt.Registry) error {

	if err := validate.Required("enableInventoryCheck", "body", m.EnableInventoryCheck); err != nil {
		return err
	}

	return nil
}

var catalogConfigInfoTypeItemDeletionCheckConfigItemsEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "CATALOG", "DLC", "ENTITLEMENT", "IAP", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		catalogConfigInfoTypeItemDeletionCheckConfigItemsEnum = append(catalogConfigInfoTypeItemDeletionCheckConfigItemsEnum, v)
	}
}

const (

	// CatalogConfigInfoItemDeletionCheckConfigCAMPAIGN captures enum value "CAMPAIGN"
	CatalogConfigInfoItemDeletionCheckConfigCAMPAIGN string = "CAMPAIGN"

	// CatalogConfigInfoItemDeletionCheckConfigCATALOG captures enum value "CATALOG"
	CatalogConfigInfoItemDeletionCheckConfigCATALOG string = "CATALOG"

	// CatalogConfigInfoItemDeletionCheckConfigDLC captures enum value "DLC"
	CatalogConfigInfoItemDeletionCheckConfigDLC string = "DLC"

	// CatalogConfigInfoItemDeletionCheckConfigENTITLEMENT captures enum value "ENTITLEMENT"
	CatalogConfigInfoItemDeletionCheckConfigENTITLEMENT string = "ENTITLEMENT"

	// CatalogConfigInfoItemDeletionCheckConfigIAP captures enum value "IAP"
	CatalogConfigInfoItemDeletionCheckConfigIAP string = "IAP"

	// CatalogConfigInfoItemDeletionCheckConfigREWARD captures enum value "REWARD"
	CatalogConfigInfoItemDeletionCheckConfigREWARD string = "REWARD"
)

func (m *CatalogConfigInfo) validateItemDeletionCheckConfigItemsEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, catalogConfigInfoTypeItemDeletionCheckConfigItemsEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CatalogConfigInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CatalogConfigInfo) UnmarshalBinary(b []byte) error {
	var res CatalogConfigInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
