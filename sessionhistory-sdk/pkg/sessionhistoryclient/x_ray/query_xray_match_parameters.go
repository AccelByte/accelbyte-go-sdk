// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

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

// NewQueryXrayMatchParams creates a new QueryXrayMatchParams object
// with the default values initialized.
func NewQueryXrayMatchParams() *QueryXrayMatchParams {
	var ()
	return &QueryXrayMatchParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryXrayMatchParamsWithTimeout creates a new QueryXrayMatchParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryXrayMatchParamsWithTimeout(timeout time.Duration) *QueryXrayMatchParams {
	var ()
	return &QueryXrayMatchParams{

		timeout: timeout,
	}
}

// NewQueryXrayMatchParamsWithContext creates a new QueryXrayMatchParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryXrayMatchParamsWithContext(ctx context.Context) *QueryXrayMatchParams {
	var ()
	return &QueryXrayMatchParams{

		Context: ctx,
	}
}

// NewQueryXrayMatchParamsWithHTTPClient creates a new QueryXrayMatchParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryXrayMatchParamsWithHTTPClient(client *http.Client) *QueryXrayMatchParams {
	var ()
	return &QueryXrayMatchParams{
		HTTPClient: client,
	}
}

/*QueryXrayMatchParams contains all the parameters to send to the API endpoint
for the query xray match operation typically these are written to a http.Request
*/
type QueryXrayMatchParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MatchID
	  match ID

	*/
	MatchID string
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

// WithTimeout adds the timeout to the query xray match params
func (o *QueryXrayMatchParams) WithTimeout(timeout time.Duration) *QueryXrayMatchParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query xray match params
func (o *QueryXrayMatchParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query xray match params
func (o *QueryXrayMatchParams) WithContext(ctx context.Context) *QueryXrayMatchParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query xray match params
func (o *QueryXrayMatchParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query xray match params
func (o *QueryXrayMatchParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query xray match params
func (o *QueryXrayMatchParams) WithHTTPClient(client *http.Client) *QueryXrayMatchParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query xray match params
func (o *QueryXrayMatchParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query xray match params
func (o *QueryXrayMatchParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryXrayMatchParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMatchID adds the matchID to the query xray match params
func (o *QueryXrayMatchParams) WithMatchID(matchID string) *QueryXrayMatchParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the query xray match params
func (o *QueryXrayMatchParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the query xray match params
func (o *QueryXrayMatchParams) WithNamespace(namespace string) *QueryXrayMatchParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query xray match params
func (o *QueryXrayMatchParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *QueryXrayMatchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param matchId
	if err := r.SetPathParam("matchId", o.MatchID); err != nil {
		return err
	}

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
