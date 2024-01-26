// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Get the enum in SearchItemTypeConfigParams
const (
	SearchItemTypeConfigAPPConstant          = "APP"
	SearchItemTypeConfigBUNDLEConstant       = "BUNDLE"
	SearchItemTypeConfigCODEConstant         = "CODE"
	SearchItemTypeConfigCOINSConstant        = "COINS"
	SearchItemTypeConfigEXTENSIONConstant    = "EXTENSION"
	SearchItemTypeConfigINGAMEITEMConstant   = "INGAMEITEM"
	SearchItemTypeConfigLOOTBOXConstant      = "LOOTBOX"
	SearchItemTypeConfigMEDIAConstant        = "MEDIA"
	SearchItemTypeConfigOPTIONBOXConstant    = "OPTIONBOX"
	SearchItemTypeConfigSEASONConstant       = "SEASON"
	SearchItemTypeConfigSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewSearchItemTypeConfigParams creates a new SearchItemTypeConfigParams object
// with the default values initialized.
func NewSearchItemTypeConfigParams() *SearchItemTypeConfigParams {
	var ()
	return &SearchItemTypeConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSearchItemTypeConfigParamsWithTimeout creates a new SearchItemTypeConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSearchItemTypeConfigParamsWithTimeout(timeout time.Duration) *SearchItemTypeConfigParams {
	var ()
	return &SearchItemTypeConfigParams{

		timeout: timeout,
	}
}

// NewSearchItemTypeConfigParamsWithContext creates a new SearchItemTypeConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewSearchItemTypeConfigParamsWithContext(ctx context.Context) *SearchItemTypeConfigParams {
	var ()
	return &SearchItemTypeConfigParams{

		Context: ctx,
	}
}

// NewSearchItemTypeConfigParamsWithHTTPClient creates a new SearchItemTypeConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSearchItemTypeConfigParamsWithHTTPClient(client *http.Client) *SearchItemTypeConfigParams {
	var ()
	return &SearchItemTypeConfigParams{
		HTTPClient: client,
	}
}

/*SearchItemTypeConfigParams contains all the parameters to send to the API endpoint
for the search item type config operation typically these are written to a http.Request
*/
type SearchItemTypeConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Clazz*/
	Clazz *string
	/*ItemType*/
	ItemType string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the search item type config params
func (o *SearchItemTypeConfigParams) WithTimeout(timeout time.Duration) *SearchItemTypeConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the search item type config params
func (o *SearchItemTypeConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the search item type config params
func (o *SearchItemTypeConfigParams) WithContext(ctx context.Context) *SearchItemTypeConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the search item type config params
func (o *SearchItemTypeConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the search item type config params
func (o *SearchItemTypeConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the search item type config params
func (o *SearchItemTypeConfigParams) WithHTTPClient(client *http.Client) *SearchItemTypeConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the search item type config params
func (o *SearchItemTypeConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the search item type config params
func (o *SearchItemTypeConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SearchItemTypeConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithClazz adds the clazz to the search item type config params
func (o *SearchItemTypeConfigParams) WithClazz(clazz *string) *SearchItemTypeConfigParams {
	o.SetClazz(clazz)
	return o
}

// SetClazz adds the clazz to the search item type config params
func (o *SearchItemTypeConfigParams) SetClazz(clazz *string) {
	o.Clazz = clazz
}

// WithItemType adds the itemType to the search item type config params
func (o *SearchItemTypeConfigParams) WithItemType(itemType string) *SearchItemTypeConfigParams {
	o.SetItemType(itemType)
	return o
}

// SetItemType adds the itemType to the search item type config params
func (o *SearchItemTypeConfigParams) SetItemType(itemType string) {
	o.ItemType = itemType
}

// WriteToRequest writes these params to a swagger request
func (o *SearchItemTypeConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Clazz != nil {

		// query param clazz
		var qrClazz string
		if o.Clazz != nil {
			qrClazz = *o.Clazz
		}
		qClazz := qrClazz
		if qClazz != "" {
			if err := r.SetQueryParam("clazz", qClazz); err != nil {
				return err
			}
		}

	}

	// query param itemType
	qrItemType := o.ItemType
	qItemType := qrItemType
	if qItemType != "" {
		if err := r.SetQueryParam("itemType", qItemType); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
