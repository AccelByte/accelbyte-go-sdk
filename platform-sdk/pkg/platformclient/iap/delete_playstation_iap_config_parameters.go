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

// NewDeletePlaystationIAPConfigParams creates a new DeletePlaystationIAPConfigParams object
// with the default values initialized.
func NewDeletePlaystationIAPConfigParams() *DeletePlaystationIAPConfigParams {
	var ()
	return &DeletePlaystationIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeletePlaystationIAPConfigParamsWithTimeout creates a new DeletePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeletePlaystationIAPConfigParamsWithTimeout(timeout time.Duration) *DeletePlaystationIAPConfigParams {
	var ()
	return &DeletePlaystationIAPConfigParams{

		timeout: timeout,
	}
}

// NewDeletePlaystationIAPConfigParamsWithContext creates a new DeletePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeletePlaystationIAPConfigParamsWithContext(ctx context.Context) *DeletePlaystationIAPConfigParams {
	var ()
	return &DeletePlaystationIAPConfigParams{

		Context: ctx,
	}
}

// NewDeletePlaystationIAPConfigParamsWithHTTPClient creates a new DeletePlaystationIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeletePlaystationIAPConfigParamsWithHTTPClient(client *http.Client) *DeletePlaystationIAPConfigParams {
	var ()
	return &DeletePlaystationIAPConfigParams{
		HTTPClient: client,
	}
}

/*DeletePlaystationIAPConfigParams contains all the parameters to send to the API endpoint
for the delete playstation iap config operation typically these are written to a http.Request
*/
type DeletePlaystationIAPConfigParams struct {

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

// WithTimeout adds the timeout to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) WithTimeout(timeout time.Duration) *DeletePlaystationIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) WithContext(ctx context.Context) *DeletePlaystationIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) WithHTTPClient(client *http.Client) *DeletePlaystationIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeletePlaystationIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) WithNamespace(namespace string) *DeletePlaystationIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete playstation iap config params
func (o *DeletePlaystationIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeletePlaystationIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
