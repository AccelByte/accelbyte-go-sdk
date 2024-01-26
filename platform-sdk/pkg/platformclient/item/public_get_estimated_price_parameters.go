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

// NewPublicGetEstimatedPriceParams creates a new PublicGetEstimatedPriceParams object
// with the default values initialized.
func NewPublicGetEstimatedPriceParams() *PublicGetEstimatedPriceParams {
	var ()
	return &PublicGetEstimatedPriceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetEstimatedPriceParamsWithTimeout creates a new PublicGetEstimatedPriceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetEstimatedPriceParamsWithTimeout(timeout time.Duration) *PublicGetEstimatedPriceParams {
	var ()
	return &PublicGetEstimatedPriceParams{

		timeout: timeout,
	}
}

// NewPublicGetEstimatedPriceParamsWithContext creates a new PublicGetEstimatedPriceParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetEstimatedPriceParamsWithContext(ctx context.Context) *PublicGetEstimatedPriceParams {
	var ()
	return &PublicGetEstimatedPriceParams{

		Context: ctx,
	}
}

// NewPublicGetEstimatedPriceParamsWithHTTPClient creates a new PublicGetEstimatedPriceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetEstimatedPriceParamsWithHTTPClient(client *http.Client) *PublicGetEstimatedPriceParams {
	var ()
	return &PublicGetEstimatedPriceParams{
		HTTPClient: client,
	}
}

/*PublicGetEstimatedPriceParams contains all the parameters to send to the API endpoint
for the public get estimated price operation typically these are written to a http.Request
*/
type PublicGetEstimatedPriceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Region*/
	Region *string
	/*StoreID
	  use published store id by default

	*/
	StoreID *string
	/*ItemIds
	  commas separated item ids

	*/
	ItemIds string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithTimeout(timeout time.Duration) *PublicGetEstimatedPriceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithContext(ctx context.Context) *PublicGetEstimatedPriceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithHTTPClient(client *http.Client) *PublicGetEstimatedPriceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetEstimatedPriceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithNamespace(namespace string) *PublicGetEstimatedPriceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithRegion(region *string) *PublicGetEstimatedPriceParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithStoreID(storeID *string) *PublicGetEstimatedPriceParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithItemIds adds the itemIds to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) WithItemIds(itemIds string) *PublicGetEstimatedPriceParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the public get estimated price params
func (o *PublicGetEstimatedPriceParams) SetItemIds(itemIds string) {
	o.ItemIds = itemIds
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetEstimatedPriceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.StoreID != nil {

		// query param storeId
		var qrStoreID string
		if o.StoreID != nil {
			qrStoreID = *o.StoreID
		}
		qStoreID := qrStoreID
		if qStoreID != "" {
			if err := r.SetQueryParam("storeId", qStoreID); err != nil {
				return err
			}
		}

	}

	// query param itemIds
	qrItemIds := o.ItemIds
	qItemIds := qrItemIds
	if qItemIds != "" {
		if err := r.SetQueryParam("itemIds", qItemIds); err != nil {
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
