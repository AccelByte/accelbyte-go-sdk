// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_cycle_configuration

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

// NewGetStatCycleParams creates a new GetStatCycleParams object
// with the default values initialized.
func NewGetStatCycleParams() *GetStatCycleParams {
	var ()
	return &GetStatCycleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatCycleParamsWithTimeout creates a new GetStatCycleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatCycleParamsWithTimeout(timeout time.Duration) *GetStatCycleParams {
	var ()
	return &GetStatCycleParams{

		timeout: timeout,
	}
}

// NewGetStatCycleParamsWithContext creates a new GetStatCycleParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatCycleParamsWithContext(ctx context.Context) *GetStatCycleParams {
	var ()
	return &GetStatCycleParams{

		Context: ctx,
	}
}

// NewGetStatCycleParamsWithHTTPClient creates a new GetStatCycleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatCycleParamsWithHTTPClient(client *http.Client) *GetStatCycleParams {
	var ()
	return &GetStatCycleParams{
		HTTPClient: client,
	}
}

/*GetStatCycleParams contains all the parameters to send to the API endpoint
for the get stat cycle operation typically these are written to a http.Request
*/
type GetStatCycleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CycleID
	  cycle id

	*/
	CycleID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get stat cycle params
func (o *GetStatCycleParams) WithTimeout(timeout time.Duration) *GetStatCycleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stat cycle params
func (o *GetStatCycleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stat cycle params
func (o *GetStatCycleParams) WithContext(ctx context.Context) *GetStatCycleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stat cycle params
func (o *GetStatCycleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stat cycle params
func (o *GetStatCycleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stat cycle params
func (o *GetStatCycleParams) WithHTTPClient(client *http.Client) *GetStatCycleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stat cycle params
func (o *GetStatCycleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stat cycle params
func (o *GetStatCycleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetStatCycleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCycleID adds the cycleID to the get stat cycle params
func (o *GetStatCycleParams) WithCycleID(cycleID string) *GetStatCycleParams {
	o.SetCycleID(cycleID)
	return o
}

// SetCycleID adds the cycleId to the get stat cycle params
func (o *GetStatCycleParams) SetCycleID(cycleID string) {
	o.CycleID = cycleID
}

// WithNamespace adds the namespace to the get stat cycle params
func (o *GetStatCycleParams) WithNamespace(namespace string) *GetStatCycleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stat cycle params
func (o *GetStatCycleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatCycleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param cycleId
	if err := r.SetPathParam("cycleId", o.CycleID); err != nil {
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
