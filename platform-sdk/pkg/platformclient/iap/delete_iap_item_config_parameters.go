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

// NewDeleteIAPItemConfigParams creates a new DeleteIAPItemConfigParams object
// with the default values initialized.
func NewDeleteIAPItemConfigParams() *DeleteIAPItemConfigParams {
	var ()
	return &DeleteIAPItemConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteIAPItemConfigParamsWithTimeout creates a new DeleteIAPItemConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteIAPItemConfigParamsWithTimeout(timeout time.Duration) *DeleteIAPItemConfigParams {
	var ()
	return &DeleteIAPItemConfigParams{

		timeout: timeout,
	}
}

// NewDeleteIAPItemConfigParamsWithContext creates a new DeleteIAPItemConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteIAPItemConfigParamsWithContext(ctx context.Context) *DeleteIAPItemConfigParams {
	var ()
	return &DeleteIAPItemConfigParams{

		Context: ctx,
	}
}

// NewDeleteIAPItemConfigParamsWithHTTPClient creates a new DeleteIAPItemConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteIAPItemConfigParamsWithHTTPClient(client *http.Client) *DeleteIAPItemConfigParams {
	var ()
	return &DeleteIAPItemConfigParams{
		HTTPClient: client,
	}
}

/*DeleteIAPItemConfigParams contains all the parameters to send to the API endpoint
for the delete iap item config operation typically these are written to a http.Request
*/
type DeleteIAPItemConfigParams struct {

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

// WithTimeout adds the timeout to the delete iap item config params
func (o *DeleteIAPItemConfigParams) WithTimeout(timeout time.Duration) *DeleteIAPItemConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete iap item config params
func (o *DeleteIAPItemConfigParams) WithContext(ctx context.Context) *DeleteIAPItemConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete iap item config params
func (o *DeleteIAPItemConfigParams) WithHTTPClient(client *http.Client) *DeleteIAPItemConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteIAPItemConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete iap item config params
func (o *DeleteIAPItemConfigParams) WithNamespace(namespace string) *DeleteIAPItemConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete iap item config params
func (o *DeleteIAPItemConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteIAPItemConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
