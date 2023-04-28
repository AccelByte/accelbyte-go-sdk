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

// NewPublicPartyLeaveParams creates a new PublicPartyLeaveParams object
// with the default values initialized.
func NewPublicPartyLeaveParams() *PublicPartyLeaveParams {
	var ()
	return &PublicPartyLeaveParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartyLeaveParamsWithTimeout creates a new PublicPartyLeaveParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartyLeaveParamsWithTimeout(timeout time.Duration) *PublicPartyLeaveParams {
	var ()
	return &PublicPartyLeaveParams{

		timeout: timeout,
	}
}

// NewPublicPartyLeaveParamsWithContext creates a new PublicPartyLeaveParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartyLeaveParamsWithContext(ctx context.Context) *PublicPartyLeaveParams {
	var ()
	return &PublicPartyLeaveParams{

		Context: ctx,
	}
}

// NewPublicPartyLeaveParamsWithHTTPClient creates a new PublicPartyLeaveParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartyLeaveParamsWithHTTPClient(client *http.Client) *PublicPartyLeaveParams {
	var ()
	return &PublicPartyLeaveParams{
		HTTPClient: client,
	}
}

/*PublicPartyLeaveParams contains all the parameters to send to the API endpoint
for the public party leave operation typically these are written to a http.Request
*/
type PublicPartyLeaveParams struct {

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

// WithTimeout adds the timeout to the public party leave params
func (o *PublicPartyLeaveParams) WithTimeout(timeout time.Duration) *PublicPartyLeaveParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public party leave params
func (o *PublicPartyLeaveParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public party leave params
func (o *PublicPartyLeaveParams) WithContext(ctx context.Context) *PublicPartyLeaveParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public party leave params
func (o *PublicPartyLeaveParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public party leave params
func (o *PublicPartyLeaveParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public party leave params
func (o *PublicPartyLeaveParams) WithHTTPClient(client *http.Client) *PublicPartyLeaveParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public party leave params
func (o *PublicPartyLeaveParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public party leave params
func (o *PublicPartyLeaveParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public party leave params
func (o *PublicPartyLeaveParams) WithNamespace(namespace string) *PublicPartyLeaveParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public party leave params
func (o *PublicPartyLeaveParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public party leave params
func (o *PublicPartyLeaveParams) WithPartyID(partyID string) *PublicPartyLeaveParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public party leave params
func (o *PublicPartyLeaveParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartyLeaveParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
