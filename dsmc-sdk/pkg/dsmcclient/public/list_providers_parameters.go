// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public

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

// NewListProvidersParams creates a new ListProvidersParams object
// with the default values initialized.
func NewListProvidersParams() *ListProvidersParams {
	var ()
	return &ListProvidersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListProvidersParamsWithTimeout creates a new ListProvidersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListProvidersParamsWithTimeout(timeout time.Duration) *ListProvidersParams {
	var ()
	return &ListProvidersParams{

		timeout: timeout,
	}
}

// NewListProvidersParamsWithContext creates a new ListProvidersParams object
// with the default values initialized, and the ability to set a context for a request
func NewListProvidersParamsWithContext(ctx context.Context) *ListProvidersParams {
	var ()
	return &ListProvidersParams{

		Context: ctx,
	}
}

// NewListProvidersParamsWithHTTPClient creates a new ListProvidersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListProvidersParamsWithHTTPClient(client *http.Client) *ListProvidersParams {
	var ()
	return &ListProvidersParams{
		HTTPClient: client,
	}
}

/*ListProvidersParams contains all the parameters to send to the API endpoint
for the list providers operation typically these are written to a http.Request
*/
type ListProvidersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list providers params
func (o *ListProvidersParams) WithTimeout(timeout time.Duration) *ListProvidersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list providers params
func (o *ListProvidersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list providers params
func (o *ListProvidersParams) WithContext(ctx context.Context) *ListProvidersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list providers params
func (o *ListProvidersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list providers params
func (o *ListProvidersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list providers params
func (o *ListProvidersParams) WithHTTPClient(client *http.Client) *ListProvidersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list providers params
func (o *ListProvidersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list providers params
func (o *ListProvidersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListProvidersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *ListProvidersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
