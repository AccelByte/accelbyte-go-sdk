// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package watchdogs

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

// NewWatchdogConnectParams creates a new WatchdogConnectParams object
// with the default values initialized.
func NewWatchdogConnectParams() *WatchdogConnectParams {
	var ()
	return &WatchdogConnectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewWatchdogConnectParamsWithTimeout creates a new WatchdogConnectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewWatchdogConnectParamsWithTimeout(timeout time.Duration) *WatchdogConnectParams {
	var ()
	return &WatchdogConnectParams{

		timeout: timeout,
	}
}

// NewWatchdogConnectParamsWithContext creates a new WatchdogConnectParams object
// with the default values initialized, and the ability to set a context for a request
func NewWatchdogConnectParamsWithContext(ctx context.Context) *WatchdogConnectParams {
	var ()
	return &WatchdogConnectParams{

		Context: ctx,
	}
}

// NewWatchdogConnectParamsWithHTTPClient creates a new WatchdogConnectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewWatchdogConnectParamsWithHTTPClient(client *http.Client) *WatchdogConnectParams {
	var ()
	return &WatchdogConnectParams{
		HTTPClient: client,
	}
}

/*WatchdogConnectParams contains all the parameters to send to the API endpoint
for the watchdog connect operation typically these are written to a http.Request
*/
type WatchdogConnectParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*WatchdogID
	  the id of the watchdog

	*/
	WatchdogID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the watchdog connect params
func (o *WatchdogConnectParams) WithTimeout(timeout time.Duration) *WatchdogConnectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the watchdog connect params
func (o *WatchdogConnectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the watchdog connect params
func (o *WatchdogConnectParams) WithContext(ctx context.Context) *WatchdogConnectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the watchdog connect params
func (o *WatchdogConnectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the watchdog connect params
func (o *WatchdogConnectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the watchdog connect params
func (o *WatchdogConnectParams) WithHTTPClient(client *http.Client) *WatchdogConnectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the watchdog connect params
func (o *WatchdogConnectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the watchdog connect params
func (o *WatchdogConnectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the watchdog connect params
func (o *WatchdogConnectParams) WithNamespace(namespace string) *WatchdogConnectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the watchdog connect params
func (o *WatchdogConnectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithWatchdogID adds the watchdogID to the watchdog connect params
func (o *WatchdogConnectParams) WithWatchdogID(watchdogID string) *WatchdogConnectParams {
	o.SetWatchdogID(watchdogID)
	return o
}

// SetWatchdogID adds the watchdogId to the watchdog connect params
func (o *WatchdogConnectParams) SetWatchdogID(watchdogID string) {
	o.WatchdogID = watchdogID
}

// WriteToRequest writes these params to a swagger request
func (o *WatchdogConnectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param watchdogID
	if err := r.SetPathParam("watchdogID", o.WatchdogID); err != nil {
		return err
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
