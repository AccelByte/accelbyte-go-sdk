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

// NewGetPublishedStoreParams creates a new GetPublishedStoreParams object
// with the default values initialized.
func NewGetPublishedStoreParams() *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPublishedStoreParamsWithTimeout creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPublishedStoreParamsWithTimeout(timeout time.Duration) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		timeout: timeout,
	}
}

// NewGetPublishedStoreParamsWithContext creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPublishedStoreParamsWithContext(ctx context.Context) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		Context: ctx,
	}
}

// NewGetPublishedStoreParamsWithHTTPClient creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPublishedStoreParamsWithHTTPClient(client *http.Client) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{
		HTTPClient: client,
	}
}

/*GetPublishedStoreParams contains all the parameters to send to the API endpoint
for the get published store operation typically these are written to a http.Request
*/
type GetPublishedStoreParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get published store params
func (o *GetPublishedStoreParams) WithTimeout(timeout time.Duration) *GetPublishedStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get published store params
func (o *GetPublishedStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get published store params
func (o *GetPublishedStoreParams) WithContext(ctx context.Context) *GetPublishedStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get published store params
func (o *GetPublishedStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get published store params
func (o *GetPublishedStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get published store params
func (o *GetPublishedStoreParams) WithHTTPClient(client *http.Client) *GetPublishedStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get published store params
func (o *GetPublishedStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get published store params
func (o *GetPublishedStoreParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPublishedStoreParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get published store params
func (o *GetPublishedStoreParams) WithNamespace(namespace string) *GetPublishedStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get published store params
func (o *GetPublishedStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPublishedStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
