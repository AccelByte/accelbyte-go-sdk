// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// NewGetRevocationListParams creates a new GetRevocationListParams object
// with the default values initialized.
func NewGetRevocationListParams() *GetRevocationListParams {
	var ()
	return &GetRevocationListParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRevocationListParamsWithTimeout creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRevocationListParamsWithTimeout(timeout time.Duration) *GetRevocationListParams {
	var ()
	return &GetRevocationListParams{

		timeout: timeout,
	}
}

// NewGetRevocationListParamsWithContext creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRevocationListParamsWithContext(ctx context.Context) *GetRevocationListParams {
	var ()
	return &GetRevocationListParams{

		Context: ctx,
	}
}

// NewGetRevocationListParamsWithHTTPClient creates a new GetRevocationListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRevocationListParamsWithHTTPClient(client *http.Client) *GetRevocationListParams {
	var ()
	return &GetRevocationListParams{
		HTTPClient: client,
	}
}

/*GetRevocationListParams contains all the parameters to send to the API endpoint
for the get revocation list operation typically these are written to a http.Request
*/
type GetRevocationListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get revocation list params
func (o *GetRevocationListParams) WithTimeout(timeout time.Duration) *GetRevocationListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get revocation list params
func (o *GetRevocationListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get revocation list params
func (o *GetRevocationListParams) WithContext(ctx context.Context) *GetRevocationListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get revocation list params
func (o *GetRevocationListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get revocation list params
func (o *GetRevocationListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get revocation list params
func (o *GetRevocationListParams) WithHTTPClient(client *http.Client) *GetRevocationListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get revocation list params
func (o *GetRevocationListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get revocation list params
func (o *GetRevocationListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRevocationListParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetRevocationListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
