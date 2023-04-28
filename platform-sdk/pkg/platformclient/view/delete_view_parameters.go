// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

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

// NewDeleteViewParams creates a new DeleteViewParams object
// with the default values initialized.
func NewDeleteViewParams() *DeleteViewParams {
	var ()
	return &DeleteViewParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteViewParamsWithTimeout creates a new DeleteViewParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteViewParamsWithTimeout(timeout time.Duration) *DeleteViewParams {
	var ()
	return &DeleteViewParams{

		timeout: timeout,
	}
}

// NewDeleteViewParamsWithContext creates a new DeleteViewParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteViewParamsWithContext(ctx context.Context) *DeleteViewParams {
	var ()
	return &DeleteViewParams{

		Context: ctx,
	}
}

// NewDeleteViewParamsWithHTTPClient creates a new DeleteViewParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteViewParamsWithHTTPClient(client *http.Client) *DeleteViewParams {
	var ()
	return &DeleteViewParams{
		HTTPClient: client,
	}
}

/*DeleteViewParams contains all the parameters to send to the API endpoint
for the delete view operation typically these are written to a http.Request
*/
type DeleteViewParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ViewID*/
	ViewID string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete view params
func (o *DeleteViewParams) WithTimeout(timeout time.Duration) *DeleteViewParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete view params
func (o *DeleteViewParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete view params
func (o *DeleteViewParams) WithContext(ctx context.Context) *DeleteViewParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete view params
func (o *DeleteViewParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete view params
func (o *DeleteViewParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete view params
func (o *DeleteViewParams) WithHTTPClient(client *http.Client) *DeleteViewParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete view params
func (o *DeleteViewParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete view params
func (o *DeleteViewParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete view params
func (o *DeleteViewParams) WithNamespace(namespace string) *DeleteViewParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete view params
func (o *DeleteViewParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithViewID adds the viewID to the delete view params
func (o *DeleteViewParams) WithViewID(viewID string) *DeleteViewParams {
	o.SetViewID(viewID)
	return o
}

// SetViewID adds the viewId to the delete view params
func (o *DeleteViewParams) SetViewID(viewID string) {
	o.ViewID = viewID
}

// WithStoreID adds the storeID to the delete view params
func (o *DeleteViewParams) WithStoreID(storeID string) *DeleteViewParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the delete view params
func (o *DeleteViewParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteViewParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param viewId
	if err := r.SetPathParam("viewId", o.ViewID); err != nil {
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
