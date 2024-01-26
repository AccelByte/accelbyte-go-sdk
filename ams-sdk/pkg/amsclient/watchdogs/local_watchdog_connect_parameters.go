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

// NewLocalWatchdogConnectParams creates a new LocalWatchdogConnectParams object
// with the default values initialized.
func NewLocalWatchdogConnectParams() *LocalWatchdogConnectParams {
	var ()
	return &LocalWatchdogConnectParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewLocalWatchdogConnectParamsWithTimeout creates a new LocalWatchdogConnectParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewLocalWatchdogConnectParamsWithTimeout(timeout time.Duration) *LocalWatchdogConnectParams {
	var ()
	return &LocalWatchdogConnectParams{

		timeout: timeout,
	}
}

// NewLocalWatchdogConnectParamsWithContext creates a new LocalWatchdogConnectParams object
// with the default values initialized, and the ability to set a context for a request
func NewLocalWatchdogConnectParamsWithContext(ctx context.Context) *LocalWatchdogConnectParams {
	var ()
	return &LocalWatchdogConnectParams{

		Context: ctx,
	}
}

// NewLocalWatchdogConnectParamsWithHTTPClient creates a new LocalWatchdogConnectParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewLocalWatchdogConnectParamsWithHTTPClient(client *http.Client) *LocalWatchdogConnectParams {
	var ()
	return &LocalWatchdogConnectParams{
		HTTPClient: client,
	}
}

/*LocalWatchdogConnectParams contains all the parameters to send to the API endpoint
for the local watchdog connect operation typically these are written to a http.Request
*/
type LocalWatchdogConnectParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the local watchdog connect params
func (o *LocalWatchdogConnectParams) WithTimeout(timeout time.Duration) *LocalWatchdogConnectParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the local watchdog connect params
func (o *LocalWatchdogConnectParams) WithContext(ctx context.Context) *LocalWatchdogConnectParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the local watchdog connect params
func (o *LocalWatchdogConnectParams) WithHTTPClient(client *http.Client) *LocalWatchdogConnectParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *LocalWatchdogConnectParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the local watchdog connect params
func (o *LocalWatchdogConnectParams) WithNamespace(namespace string) *LocalWatchdogConnectParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithWatchdogID adds the watchdogID to the local watchdog connect params
func (o *LocalWatchdogConnectParams) WithWatchdogID(watchdogID string) *LocalWatchdogConnectParams {
	o.SetWatchdogID(watchdogID)
	return o
}

// SetWatchdogID adds the watchdogId to the local watchdog connect params
func (o *LocalWatchdogConnectParams) SetWatchdogID(watchdogID string) {
	o.WatchdogID = watchdogID
}

// WriteToRequest writes these params to a swagger request
func (o *LocalWatchdogConnectParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
