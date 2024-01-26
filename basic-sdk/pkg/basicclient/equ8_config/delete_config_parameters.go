// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package equ8_config

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

// NewDeleteConfigParams creates a new DeleteConfigParams object
// with the default values initialized.
func NewDeleteConfigParams() *DeleteConfigParams {
	var ()
	return &DeleteConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteConfigParamsWithTimeout creates a new DeleteConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteConfigParamsWithTimeout(timeout time.Duration) *DeleteConfigParams {
	var ()
	return &DeleteConfigParams{

		timeout: timeout,
	}
}

// NewDeleteConfigParamsWithContext creates a new DeleteConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteConfigParamsWithContext(ctx context.Context) *DeleteConfigParams {
	var ()
	return &DeleteConfigParams{

		Context: ctx,
	}
}

// NewDeleteConfigParamsWithHTTPClient creates a new DeleteConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteConfigParamsWithHTTPClient(client *http.Client) *DeleteConfigParams {
	var ()
	return &DeleteConfigParams{
		HTTPClient: client,
	}
}

/*DeleteConfigParams contains all the parameters to send to the API endpoint
for the delete config operation typically these are written to a http.Request
*/
type DeleteConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete config params
func (o *DeleteConfigParams) WithTimeout(timeout time.Duration) *DeleteConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete config params
func (o *DeleteConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete config params
func (o *DeleteConfigParams) WithContext(ctx context.Context) *DeleteConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete config params
func (o *DeleteConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete config params
func (o *DeleteConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete config params
func (o *DeleteConfigParams) WithHTTPClient(client *http.Client) *DeleteConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete config params
func (o *DeleteConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete config params
func (o *DeleteConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete config params
func (o *DeleteConfigParams) WithNamespace(namespace string) *DeleteConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete config params
func (o *DeleteConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
