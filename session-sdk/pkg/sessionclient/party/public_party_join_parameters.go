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

// NewPublicPartyJoinParams creates a new PublicPartyJoinParams object
// with the default values initialized.
func NewPublicPartyJoinParams() *PublicPartyJoinParams {
	var ()
	return &PublicPartyJoinParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartyJoinParamsWithTimeout creates a new PublicPartyJoinParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartyJoinParamsWithTimeout(timeout time.Duration) *PublicPartyJoinParams {
	var ()
	return &PublicPartyJoinParams{

		timeout: timeout,
	}
}

// NewPublicPartyJoinParamsWithContext creates a new PublicPartyJoinParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartyJoinParamsWithContext(ctx context.Context) *PublicPartyJoinParams {
	var ()
	return &PublicPartyJoinParams{

		Context: ctx,
	}
}

// NewPublicPartyJoinParamsWithHTTPClient creates a new PublicPartyJoinParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartyJoinParamsWithHTTPClient(client *http.Client) *PublicPartyJoinParams {
	var ()
	return &PublicPartyJoinParams{
		HTTPClient: client,
	}
}

/*PublicPartyJoinParams contains all the parameters to send to the API endpoint
for the public party join operation typically these are written to a http.Request
*/
type PublicPartyJoinParams struct {

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
}

// WithTimeout adds the timeout to the public party join params
func (o *PublicPartyJoinParams) WithTimeout(timeout time.Duration) *PublicPartyJoinParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public party join params
func (o *PublicPartyJoinParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public party join params
func (o *PublicPartyJoinParams) WithContext(ctx context.Context) *PublicPartyJoinParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public party join params
func (o *PublicPartyJoinParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public party join params
func (o *PublicPartyJoinParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public party join params
func (o *PublicPartyJoinParams) WithHTTPClient(client *http.Client) *PublicPartyJoinParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public party join params
func (o *PublicPartyJoinParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public party join params
func (o *PublicPartyJoinParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public party join params
func (o *PublicPartyJoinParams) WithNamespace(namespace string) *PublicPartyJoinParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public party join params
func (o *PublicPartyJoinParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public party join params
func (o *PublicPartyJoinParams) WithPartyID(partyID string) *PublicPartyJoinParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public party join params
func (o *PublicPartyJoinParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartyJoinParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
