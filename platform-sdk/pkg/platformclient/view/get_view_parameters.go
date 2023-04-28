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

// NewGetViewParams creates a new GetViewParams object
// with the default values initialized.
func NewGetViewParams() *GetViewParams {
	var ()
	return &GetViewParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetViewParamsWithTimeout creates a new GetViewParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetViewParamsWithTimeout(timeout time.Duration) *GetViewParams {
	var ()
	return &GetViewParams{

		timeout: timeout,
	}
}

// NewGetViewParamsWithContext creates a new GetViewParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetViewParamsWithContext(ctx context.Context) *GetViewParams {
	var ()
	return &GetViewParams{

		Context: ctx,
	}
}

// NewGetViewParamsWithHTTPClient creates a new GetViewParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetViewParamsWithHTTPClient(client *http.Client) *GetViewParams {
	var ()
	return &GetViewParams{
		HTTPClient: client,
	}
}

/*GetViewParams contains all the parameters to send to the API endpoint
for the get view operation typically these are written to a http.Request
*/
type GetViewParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*ViewID*/
	ViewID string
	/*StoreID
	  default is published store id

	*/
	StoreID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get view params
func (o *GetViewParams) WithTimeout(timeout time.Duration) *GetViewParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get view params
func (o *GetViewParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get view params
func (o *GetViewParams) WithContext(ctx context.Context) *GetViewParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get view params
func (o *GetViewParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get view params
func (o *GetViewParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get view params
func (o *GetViewParams) WithHTTPClient(client *http.Client) *GetViewParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get view params
func (o *GetViewParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get view params
func (o *GetViewParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get view params
func (o *GetViewParams) WithNamespace(namespace string) *GetViewParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get view params
func (o *GetViewParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithViewID adds the viewID to the get view params
func (o *GetViewParams) WithViewID(viewID string) *GetViewParams {
	o.SetViewID(viewID)
	return o
}

// SetViewID adds the viewId to the get view params
func (o *GetViewParams) SetViewID(viewID string) {
	o.ViewID = viewID
}

// WithStoreID adds the storeID to the get view params
func (o *GetViewParams) WithStoreID(storeID *string) *GetViewParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get view params
func (o *GetViewParams) SetStoreID(storeID *string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetViewParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
