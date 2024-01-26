// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

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

// NewGetCurrentSeasonParams creates a new GetCurrentSeasonParams object
// with the default values initialized.
func NewGetCurrentSeasonParams() *GetCurrentSeasonParams {
	var ()
	return &GetCurrentSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetCurrentSeasonParamsWithTimeout creates a new GetCurrentSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetCurrentSeasonParamsWithTimeout(timeout time.Duration) *GetCurrentSeasonParams {
	var ()
	return &GetCurrentSeasonParams{

		timeout: timeout,
	}
}

// NewGetCurrentSeasonParamsWithContext creates a new GetCurrentSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetCurrentSeasonParamsWithContext(ctx context.Context) *GetCurrentSeasonParams {
	var ()
	return &GetCurrentSeasonParams{

		Context: ctx,
	}
}

// NewGetCurrentSeasonParamsWithHTTPClient creates a new GetCurrentSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetCurrentSeasonParamsWithHTTPClient(client *http.Client) *GetCurrentSeasonParams {
	var ()
	return &GetCurrentSeasonParams{
		HTTPClient: client,
	}
}

/*GetCurrentSeasonParams contains all the parameters to send to the API endpoint
for the get current season operation typically these are written to a http.Request
*/
type GetCurrentSeasonParams struct {

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

// WithTimeout adds the timeout to the get current season params
func (o *GetCurrentSeasonParams) WithTimeout(timeout time.Duration) *GetCurrentSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get current season params
func (o *GetCurrentSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get current season params
func (o *GetCurrentSeasonParams) WithContext(ctx context.Context) *GetCurrentSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get current season params
func (o *GetCurrentSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get current season params
func (o *GetCurrentSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get current season params
func (o *GetCurrentSeasonParams) WithHTTPClient(client *http.Client) *GetCurrentSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get current season params
func (o *GetCurrentSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get current season params
func (o *GetCurrentSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetCurrentSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get current season params
func (o *GetCurrentSeasonParams) WithNamespace(namespace string) *GetCurrentSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get current season params
func (o *GetCurrentSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetCurrentSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
