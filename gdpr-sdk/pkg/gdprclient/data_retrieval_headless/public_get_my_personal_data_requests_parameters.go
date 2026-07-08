// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_headless

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

// NewPublicGetMyPersonalDataRequestsParams creates a new PublicGetMyPersonalDataRequestsParams object
// with the default values initialized.
func NewPublicGetMyPersonalDataRequestsParams() *PublicGetMyPersonalDataRequestsParams {
	var ()
	return &PublicGetMyPersonalDataRequestsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMyPersonalDataRequestsParamsWithTimeout creates a new PublicGetMyPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMyPersonalDataRequestsParamsWithTimeout(timeout time.Duration) *PublicGetMyPersonalDataRequestsParams {
	var ()
	return &PublicGetMyPersonalDataRequestsParams{

		timeout: timeout,
	}
}

// NewPublicGetMyPersonalDataRequestsParamsWithContext creates a new PublicGetMyPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMyPersonalDataRequestsParamsWithContext(ctx context.Context) *PublicGetMyPersonalDataRequestsParams {
	var ()
	return &PublicGetMyPersonalDataRequestsParams{

		Context: ctx,
	}
}

// NewPublicGetMyPersonalDataRequestsParamsWithHTTPClient creates a new PublicGetMyPersonalDataRequestsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMyPersonalDataRequestsParamsWithHTTPClient(client *http.Client) *PublicGetMyPersonalDataRequestsParams {
	var ()
	return &PublicGetMyPersonalDataRequestsParams{
		HTTPClient: client,
	}
}

/*PublicGetMyPersonalDataRequestsParams contains all the parameters to send to the API endpoint
for the public get my personal data requests operation typically these are written to a http.Request
*/
type PublicGetMyPersonalDataRequestsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) WithTimeout(timeout time.Duration) *PublicGetMyPersonalDataRequestsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) WithContext(ctx context.Context) *PublicGetMyPersonalDataRequestsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) WithHTTPClient(client *http.Client) *PublicGetMyPersonalDataRequestsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get my personal data requests params
func (o *PublicGetMyPersonalDataRequestsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetMyPersonalDataRequestsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMyPersonalDataRequestsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
