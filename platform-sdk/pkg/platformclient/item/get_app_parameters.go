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

// NewGetAppParams creates a new GetAppParams object
// with the default values initialized.
func NewGetAppParams() *GetAppParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetAppParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetAppParamsWithTimeout creates a new GetAppParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetAppParamsWithTimeout(timeout time.Duration) *GetAppParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetAppParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetAppParamsWithContext creates a new GetAppParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetAppParamsWithContext(ctx context.Context) *GetAppParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetAppParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetAppParamsWithHTTPClient creates a new GetAppParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetAppParamsWithHTTPClient(client *http.Client) *GetAppParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetAppParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetAppParams contains all the parameters to send to the API endpoint
for the get app operation typically these are written to a http.Request
*/
type GetAppParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get app params
func (o *GetAppParams) WithTimeout(timeout time.Duration) *GetAppParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get app params
func (o *GetAppParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get app params
func (o *GetAppParams) WithContext(ctx context.Context) *GetAppParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get app params
func (o *GetAppParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get app params
func (o *GetAppParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get app params
func (o *GetAppParams) WithHTTPClient(client *http.Client) *GetAppParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get app params
func (o *GetAppParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get app params
func (o *GetAppParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetAppParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithItemID adds the itemID to the get app params
func (o *GetAppParams) WithItemID(itemID string) *GetAppParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get app params
func (o *GetAppParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the get app params
func (o *GetAppParams) WithNamespace(namespace string) *GetAppParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get app params
func (o *GetAppParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get app params
func (o *GetAppParams) WithActiveOnly(activeOnly *bool) *GetAppParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get app params
func (o *GetAppParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithStoreID adds the storeID to the get app params
func (o *GetAppParams) WithStoreID(storeID *string) *GetAppParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get app params
func (o *GetAppParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetAppParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param itemId
	if err := r.SetPathParam("itemId", o.ItemID); err != nil {
		return err
	}

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
