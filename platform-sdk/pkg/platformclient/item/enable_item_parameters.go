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

// NewEnableItemParams creates a new EnableItemParams object
// with the default values initialized.
func NewEnableItemParams() *EnableItemParams {
	var ()
	return &EnableItemParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableItemParamsWithTimeout creates a new EnableItemParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableItemParamsWithTimeout(timeout time.Duration) *EnableItemParams {
	var ()
	return &EnableItemParams{

		timeout: timeout,
	}
}

// NewEnableItemParamsWithContext creates a new EnableItemParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableItemParamsWithContext(ctx context.Context) *EnableItemParams {
	var ()
	return &EnableItemParams{

		Context: ctx,
	}
}

// NewEnableItemParamsWithHTTPClient creates a new EnableItemParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableItemParamsWithHTTPClient(client *http.Client) *EnableItemParams {
	var ()
	return &EnableItemParams{
		HTTPClient: client,
	}
}

/*EnableItemParams contains all the parameters to send to the API endpoint
for the enable item operation typically these are written to a http.Request
*/
type EnableItemParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ItemID*/
	ItemID string
	/*Namespace*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the enable item params
func (o *EnableItemParams) WithTimeout(timeout time.Duration) *EnableItemParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable item params
func (o *EnableItemParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable item params
func (o *EnableItemParams) WithContext(ctx context.Context) *EnableItemParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable item params
func (o *EnableItemParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable item params
func (o *EnableItemParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable item params
func (o *EnableItemParams) WithHTTPClient(client *http.Client) *EnableItemParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable item params
func (o *EnableItemParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable item params
func (o *EnableItemParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithItemID adds the itemID to the enable item params
func (o *EnableItemParams) WithItemID(itemID string) *EnableItemParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the enable item params
func (o *EnableItemParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WithNamespace adds the namespace to the enable item params
func (o *EnableItemParams) WithNamespace(namespace string) *EnableItemParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable item params
func (o *EnableItemParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the enable item params
func (o *EnableItemParams) WithStoreID(storeID string) *EnableItemParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the enable item params
func (o *EnableItemParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *EnableItemParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
