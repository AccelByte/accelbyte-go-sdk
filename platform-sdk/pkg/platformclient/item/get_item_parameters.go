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

// NewGetItemParams creates a new GetItemParams object
// with the default values initialized.
func NewGetItemParams() *GetItemParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemParamsWithTimeout creates a new GetItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemParamsWithTimeout(timeout time.Duration) *GetItemParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetItemParamsWithContext creates a new GetItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemParamsWithContext(ctx context.Context) *GetItemParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetItemParamsWithHTTPClient creates a new GetItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemParamsWithHTTPClient(client *http.Client) *GetItemParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetItemParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetItemParams contains all the parameters to send to the API endpoint
for the get item operation typically these are written to a http.Request
*/
type GetItemParams struct {

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
}

// WithTimeout adds the timeout to the get item params
func (o *GetItemParams) WithTimeout(timeout time.Duration) *GetItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item params
func (o *GetItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item params
func (o *GetItemParams) WithContext(ctx context.Context) *GetItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item params
func (o *GetItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item params
func (o *GetItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item params
func (o *GetItemParams) WithHTTPClient(client *http.Client) *GetItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item params
func (o *GetItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item params
func (o *GetItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithItemID adds the itemID to the get item params
func (o *GetItemParams) WithItemID(itemID string) *GetItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get item params
func (o *GetItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the get item params
func (o *GetItemParams) WithNamespace(namespace string) *GetItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get item params
func (o *GetItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the get item params
func (o *GetItemParams) WithActiveOnly(activeOnly *bool) *GetItemParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get item params
func (o *GetItemParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithStoreID adds the storeID to the get item params
func (o *GetItemParams) WithStoreID(storeID *string) *GetItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get item params
func (o *GetItemParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
