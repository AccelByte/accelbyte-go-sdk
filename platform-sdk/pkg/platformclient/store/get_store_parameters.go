// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package store

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

// NewGetStoreParams creates a new GetStoreParams object
// with the default values initialized.
func NewGetStoreParams() *GetStoreParams {
	var ()
	return &GetStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStoreParamsWithTimeout creates a new GetStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStoreParamsWithTimeout(timeout time.Duration) *GetStoreParams {
	var ()
	return &GetStoreParams{

		timeout: timeout,
	}
}

// NewGetStoreParamsWithContext creates a new GetStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStoreParamsWithContext(ctx context.Context) *GetStoreParams {
	var ()
	return &GetStoreParams{

		Context: ctx,
	}
}

// NewGetStoreParamsWithHTTPClient creates a new GetStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStoreParamsWithHTTPClient(client *http.Client) *GetStoreParams {
	var ()
	return &GetStoreParams{
		HTTPClient: client,
	}
}

/*GetStoreParams contains all the parameters to send to the API endpoint
for the get store operation typically these are written to a http.Request
*/
type GetStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get store params
func (o *GetStoreParams) WithTimeout(timeout time.Duration) *GetStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get store params
func (o *GetStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get store params
func (o *GetStoreParams) WithContext(ctx context.Context) *GetStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get store params
func (o *GetStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get store params
func (o *GetStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get store params
func (o *GetStoreParams) WithHTTPClient(client *http.Client) *GetStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get store params
func (o *GetStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get store params
func (o *GetStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get store params
func (o *GetStoreParams) WithNamespace(namespace string) *GetStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get store params
func (o *GetStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the get store params
func (o *GetStoreParams) WithStoreID(storeID string) *GetStoreParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the get store params
func (o *GetStoreParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *GetStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param storeId
	if err := r.SetPathParam("storeId", o.StoreID); err != nil {
		return err
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
