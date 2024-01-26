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
	"github.com/go-openapi/swag"
)

// NewGetItemsParams creates a new GetItemsParams object
// with the default values initialized.
func NewGetItemsParams() *GetItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemsParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemsParamsWithTimeout creates a new GetItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemsParamsWithTimeout(timeout time.Duration) *GetItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemsParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetItemsParamsWithContext creates a new GetItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemsParamsWithContext(ctx context.Context) *GetItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemsParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetItemsParamsWithHTTPClient creates a new GetItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemsParamsWithHTTPClient(client *http.Client) *GetItemsParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemsParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetItemsParams contains all the parameters to send to the API endpoint
for the get items operation typically these are written to a http.Request
*/
type GetItemsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*StoreID
	  default is published store id

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

// WithTimeout adds the timeout to the get items params
func (o *GetItemsParams) WithTimeout(timeout time.Duration) *GetItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get items params
func (o *GetItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get items params
func (o *GetItemsParams) WithContext(ctx context.Context) *GetItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get items params
func (o *GetItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get items params
func (o *GetItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get items params
func (o *GetItemsParams) WithHTTPClient(client *http.Client) *GetItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get items params
func (o *GetItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get items params
func (o *GetItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetItemsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get items params
func (o *GetItemsParams) WithNamespace(namespace string) *GetItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get items params
func (o *GetItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get items params
func (o *GetItemsParams) WithActiveOnly(activeOnly *bool) *GetItemsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get items params
func (o *GetItemsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithStoreID adds the storeID to the get items params
func (o *GetItemsParams) WithStoreID(storeID *string) *GetItemsParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get items params
func (o *GetItemsParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WithItemIds adds the itemIds to the get items params
func (o *GetItemsParams) WithItemIds(itemIds string) *GetItemsParams {
	o.SetItemIds(itemIds)
	return o
}

// SetItemIds adds the itemIds to the get items params
func (o *GetItemsParams) SetItemIds(itemIds string) {
	o.ItemIds = itemIds
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
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
