// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewListLocalServerParams creates a new ListLocalServerParams object
// with the default values initialized.
func NewListLocalServerParams() *ListLocalServerParams {
	var ()
	return &ListLocalServerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListLocalServerParamsWithTimeout creates a new ListLocalServerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListLocalServerParamsWithTimeout(timeout time.Duration) *ListLocalServerParams {
	var ()
	return &ListLocalServerParams{

		timeout: timeout,
	}
}

// NewListLocalServerParamsWithContext creates a new ListLocalServerParams object
// with the default values initialized, and the ability to set a context for a request
func NewListLocalServerParamsWithContext(ctx context.Context) *ListLocalServerParams {
	var ()
	return &ListLocalServerParams{

		Context: ctx,
	}
}

// NewListLocalServerParamsWithHTTPClient creates a new ListLocalServerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListLocalServerParamsWithHTTPClient(client *http.Client) *ListLocalServerParams {
	var ()
	return &ListLocalServerParams{
		HTTPClient: client,
	}
}

/*ListLocalServerParams contains all the parameters to send to the API endpoint
for the list local server operation typically these are written to a http.Request
*/
type ListLocalServerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list local server params
func (o *ListLocalServerParams) WithTimeout(timeout time.Duration) *ListLocalServerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list local server params
func (o *ListLocalServerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list local server params
func (o *ListLocalServerParams) WithContext(ctx context.Context) *ListLocalServerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list local server params
func (o *ListLocalServerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list local server params
func (o *ListLocalServerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list local server params
func (o *ListLocalServerParams) WithHTTPClient(client *http.Client) *ListLocalServerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list local server params
func (o *ListLocalServerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list local server params
func (o *ListLocalServerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListLocalServerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list local server params
func (o *ListLocalServerParams) WithNamespace(namespace string) *ListLocalServerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list local server params
func (o *ListLocalServerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ListLocalServerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
