// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewDeleteXblAPConfigParams creates a new DeleteXblAPConfigParams object
// with the default values initialized.
func NewDeleteXblAPConfigParams() *DeleteXblAPConfigParams {
	var ()
	return &DeleteXblAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteXblAPConfigParamsWithTimeout creates a new DeleteXblAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteXblAPConfigParamsWithTimeout(timeout time.Duration) *DeleteXblAPConfigParams {
	var ()
	return &DeleteXblAPConfigParams{

		timeout: timeout,
	}
}

// NewDeleteXblAPConfigParamsWithContext creates a new DeleteXblAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteXblAPConfigParamsWithContext(ctx context.Context) *DeleteXblAPConfigParams {
	var ()
	return &DeleteXblAPConfigParams{

		Context: ctx,
	}
}

// NewDeleteXblAPConfigParamsWithHTTPClient creates a new DeleteXblAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteXblAPConfigParamsWithHTTPClient(client *http.Client) *DeleteXblAPConfigParams {
	var ()
	return &DeleteXblAPConfigParams{
		HTTPClient: client,
	}
}

/*DeleteXblAPConfigParams contains all the parameters to send to the API endpoint
for the delete xbl ap config operation typically these are written to a http.Request
*/
type DeleteXblAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) WithTimeout(timeout time.Duration) *DeleteXblAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) WithContext(ctx context.Context) *DeleteXblAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) WithHTTPClient(client *http.Client) *DeleteXblAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteXblAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) WithNamespace(namespace string) *DeleteXblAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete xbl ap config params
func (o *DeleteXblAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteXblAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
