// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pass

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

// NewQueryPassesParams creates a new QueryPassesParams object
// with the default values initialized.
func NewQueryPassesParams() *QueryPassesParams {
	var ()
	return &QueryPassesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryPassesParamsWithTimeout creates a new QueryPassesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryPassesParamsWithTimeout(timeout time.Duration) *QueryPassesParams {
	var ()
	return &QueryPassesParams{

		timeout: timeout,
	}
}

// NewQueryPassesParamsWithContext creates a new QueryPassesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryPassesParamsWithContext(ctx context.Context) *QueryPassesParams {
	var ()
	return &QueryPassesParams{

		Context: ctx,
	}
}

// NewQueryPassesParamsWithHTTPClient creates a new QueryPassesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryPassesParamsWithHTTPClient(client *http.Client) *QueryPassesParams {
	var ()
	return &QueryPassesParams{
		HTTPClient: client,
	}
}

/*QueryPassesParams contains all the parameters to send to the API endpoint
for the query passes operation typically these are written to a http.Request
*/
type QueryPassesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query passes params
func (o *QueryPassesParams) WithTimeout(timeout time.Duration) *QueryPassesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query passes params
func (o *QueryPassesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query passes params
func (o *QueryPassesParams) WithContext(ctx context.Context) *QueryPassesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query passes params
func (o *QueryPassesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query passes params
func (o *QueryPassesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query passes params
func (o *QueryPassesParams) WithHTTPClient(client *http.Client) *QueryPassesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query passes params
func (o *QueryPassesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query passes params
func (o *QueryPassesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryPassesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query passes params
func (o *QueryPassesParams) WithNamespace(namespace string) *QueryPassesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query passes params
func (o *QueryPassesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the query passes params
func (o *QueryPassesParams) WithSeasonID(seasonID string) *QueryPassesParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the query passes params
func (o *QueryPassesParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryPassesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
