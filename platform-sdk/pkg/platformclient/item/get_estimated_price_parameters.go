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

// NewGetEstimatedPriceParams creates a new GetEstimatedPriceParams object
// with the default values initialized.
func NewGetEstimatedPriceParams() *GetEstimatedPriceParams {
	var ()
	return &GetEstimatedPriceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEstimatedPriceParamsWithTimeout creates a new GetEstimatedPriceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEstimatedPriceParamsWithTimeout(timeout time.Duration) *GetEstimatedPriceParams {
	var ()
	return &GetEstimatedPriceParams{

		timeout: timeout,
	}
}

// NewGetEstimatedPriceParamsWithContext creates a new GetEstimatedPriceParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEstimatedPriceParamsWithContext(ctx context.Context) *GetEstimatedPriceParams {
	var ()
	return &GetEstimatedPriceParams{

		Context: ctx,
	}
}

// NewGetEstimatedPriceParamsWithHTTPClient creates a new GetEstimatedPriceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEstimatedPriceParamsWithHTTPClient(client *http.Client) *GetEstimatedPriceParams {
	var ()
	return &GetEstimatedPriceParams{
		HTTPClient: client,
	}
}

/*GetEstimatedPriceParams contains all the parameters to send to the API endpoint
for the get estimated price operation typically these are written to a http.Request
*/
type GetEstimatedPriceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Platform*/
	Platform *string
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
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get estimated price params
func (o *GetEstimatedPriceParams) WithTimeout(timeout time.Duration) *GetEstimatedPriceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get estimated price params
func (o *GetEstimatedPriceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get estimated price params
func (o *GetEstimatedPriceParams) WithContext(ctx context.Context) *GetEstimatedPriceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get estimated price params
func (o *GetEstimatedPriceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get estimated price params
func (o *GetEstimatedPriceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get estimated price params
func (o *GetEstimatedPriceParams) WithHTTPClient(client *http.Client) *GetEstimatedPriceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get estimated price params
func (o *GetEstimatedPriceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get estimated price params
func (o *GetEstimatedPriceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEstimatedPriceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get estimated price params
func (o *GetEstimatedPriceParams) WithNamespace(namespace string) *GetEstimatedPriceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get estimated price params
func (o *GetEstimatedPriceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get estimated price params
func (o *GetEstimatedPriceParams) WithPlatform(platform *string) *GetEstimatedPriceParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get estimated price params
func (o *GetEstimatedPriceParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithRegion adds the region to the get estimated price params
func (o *GetEstimatedPriceParams) WithRegion(region *string) *GetEstimatedPriceParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the get estimated price params
func (o *GetEstimatedPriceParams) SetRegion(region *string) {
	o.Region = region
}

// WithStoreID adds the storeID to the get estimated price params
func (o *GetEstimatedPriceParams) WithStoreID(storeID *string) *GetEstimatedPriceParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get estimated price params
func (o *GetEstimatedPriceParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithItemIds adds the itemIds to the get estimated price params
func (o *GetEstimatedPriceParams) WithItemIds(itemIds string) *GetEstimatedPriceParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the get estimated price params
func (o *GetEstimatedPriceParams) SetItemIds(itemIds string) {
	o.ItemIds = itemIds
}

// WithUserID adds the userID to the get estimated price params
func (o *GetEstimatedPriceParams) WithUserID(userID string) *GetEstimatedPriceParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get estimated price params
func (o *GetEstimatedPriceParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetEstimatedPriceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

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

	// query param userId
	qrUserID := o.UserID
	qUserID := qrUserID
	if qUserID != "" {
		if err := r.SetQueryParam("userId", qUserID); err != nil {
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
