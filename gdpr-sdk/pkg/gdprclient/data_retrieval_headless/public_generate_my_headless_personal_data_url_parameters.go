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

// NewPublicGenerateMyHeadlessPersonalDataURLParams creates a new PublicGenerateMyHeadlessPersonalDataURLParams object
// with the default values initialized.
func NewPublicGenerateMyHeadlessPersonalDataURLParams() *PublicGenerateMyHeadlessPersonalDataURLParams {
	var ()
	return &PublicGenerateMyHeadlessPersonalDataURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGenerateMyHeadlessPersonalDataURLParamsWithTimeout creates a new PublicGenerateMyHeadlessPersonalDataURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGenerateMyHeadlessPersonalDataURLParamsWithTimeout(timeout time.Duration) *PublicGenerateMyHeadlessPersonalDataURLParams {
	var ()
	return &PublicGenerateMyHeadlessPersonalDataURLParams{

		timeout: timeout,
	}
}

// NewPublicGenerateMyHeadlessPersonalDataURLParamsWithContext creates a new PublicGenerateMyHeadlessPersonalDataURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGenerateMyHeadlessPersonalDataURLParamsWithContext(ctx context.Context) *PublicGenerateMyHeadlessPersonalDataURLParams {
	var ()
	return &PublicGenerateMyHeadlessPersonalDataURLParams{

		Context: ctx,
	}
}

// NewPublicGenerateMyHeadlessPersonalDataURLParamsWithHTTPClient creates a new PublicGenerateMyHeadlessPersonalDataURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGenerateMyHeadlessPersonalDataURLParamsWithHTTPClient(client *http.Client) *PublicGenerateMyHeadlessPersonalDataURLParams {
	var ()
	return &PublicGenerateMyHeadlessPersonalDataURLParams{
		HTTPClient: client,
	}
}

/*PublicGenerateMyHeadlessPersonalDataURLParams contains all the parameters to send to the API endpoint
for the public generate my headless personal data url operation typically these are written to a http.Request
*/
type PublicGenerateMyHeadlessPersonalDataURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RequestDate
	  Request date in RFC3339 format

	*/
	RequestDate string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) WithTimeout(timeout time.Duration) *PublicGenerateMyHeadlessPersonalDataURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) WithContext(ctx context.Context) *PublicGenerateMyHeadlessPersonalDataURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) WithHTTPClient(client *http.Client) *PublicGenerateMyHeadlessPersonalDataURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRequestDate adds the requestDate to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) WithRequestDate(requestDate string) *PublicGenerateMyHeadlessPersonalDataURLParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the public generate my headless personal data url params
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGenerateMyHeadlessPersonalDataURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param requestDate
	if err := r.SetPathParam("requestDate", o.RequestDate); err != nil {
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
