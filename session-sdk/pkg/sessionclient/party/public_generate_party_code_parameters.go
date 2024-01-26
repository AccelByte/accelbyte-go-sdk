// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package party

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

// NewPublicGeneratePartyCodeParams creates a new PublicGeneratePartyCodeParams object
// with the default values initialized.
func NewPublicGeneratePartyCodeParams() *PublicGeneratePartyCodeParams {
	var ()
	return &PublicGeneratePartyCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGeneratePartyCodeParamsWithTimeout creates a new PublicGeneratePartyCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGeneratePartyCodeParamsWithTimeout(timeout time.Duration) *PublicGeneratePartyCodeParams {
	var ()
	return &PublicGeneratePartyCodeParams{

		timeout: timeout,
	}
}

// NewPublicGeneratePartyCodeParamsWithContext creates a new PublicGeneratePartyCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGeneratePartyCodeParamsWithContext(ctx context.Context) *PublicGeneratePartyCodeParams {
	var ()
	return &PublicGeneratePartyCodeParams{

		Context: ctx,
	}
}

// NewPublicGeneratePartyCodeParamsWithHTTPClient creates a new PublicGeneratePartyCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGeneratePartyCodeParamsWithHTTPClient(client *http.Client) *PublicGeneratePartyCodeParams {
	var ()
	return &PublicGeneratePartyCodeParams{
		HTTPClient: client,
	}
}

/*PublicGeneratePartyCodeParams contains all the parameters to send to the API endpoint
for the public generate party code operation typically these are written to a http.Request
*/
type PublicGeneratePartyCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PartyID
	  Party ID

	*/
	PartyID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public generate party code params
func (o *PublicGeneratePartyCodeParams) WithTimeout(timeout time.Duration) *PublicGeneratePartyCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate party code params
func (o *PublicGeneratePartyCodeParams) WithContext(ctx context.Context) *PublicGeneratePartyCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generate party code params
func (o *PublicGeneratePartyCodeParams) WithHTTPClient(client *http.Client) *PublicGeneratePartyCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGeneratePartyCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public generate party code params
func (o *PublicGeneratePartyCodeParams) WithNamespace(namespace string) *PublicGeneratePartyCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public generate party code params
func (o *PublicGeneratePartyCodeParams) WithPartyID(partyID string) *PublicGeneratePartyCodeParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public generate party code params
func (o *PublicGeneratePartyCodeParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGeneratePartyCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param partyId
	if err := r.SetPathParam("partyId", o.PartyID); err != nil {
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
