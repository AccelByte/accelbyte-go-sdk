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

// NewPublicPartyKickParams creates a new PublicPartyKickParams object
// with the default values initialized.
func NewPublicPartyKickParams() *PublicPartyKickParams {
	var ()
	return &PublicPartyKickParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartyKickParamsWithTimeout creates a new PublicPartyKickParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartyKickParamsWithTimeout(timeout time.Duration) *PublicPartyKickParams {
	var ()
	return &PublicPartyKickParams{

		timeout: timeout,
	}
}

// NewPublicPartyKickParamsWithContext creates a new PublicPartyKickParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartyKickParamsWithContext(ctx context.Context) *PublicPartyKickParams {
	var ()
	return &PublicPartyKickParams{

		Context: ctx,
	}
}

// NewPublicPartyKickParamsWithHTTPClient creates a new PublicPartyKickParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartyKickParamsWithHTTPClient(client *http.Client) *PublicPartyKickParams {
	var ()
	return &PublicPartyKickParams{
		HTTPClient: client,
	}
}

/*PublicPartyKickParams contains all the parameters to send to the API endpoint
for the public party kick operation typically these are written to a http.Request
*/
type PublicPartyKickParams struct {

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
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public party kick params
func (o *PublicPartyKickParams) WithTimeout(timeout time.Duration) *PublicPartyKickParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public party kick params
func (o *PublicPartyKickParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public party kick params
func (o *PublicPartyKickParams) WithContext(ctx context.Context) *PublicPartyKickParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public party kick params
func (o *PublicPartyKickParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public party kick params
func (o *PublicPartyKickParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public party kick params
func (o *PublicPartyKickParams) WithHTTPClient(client *http.Client) *PublicPartyKickParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public party kick params
func (o *PublicPartyKickParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public party kick params
func (o *PublicPartyKickParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public party kick params
func (o *PublicPartyKickParams) WithNamespace(namespace string) *PublicPartyKickParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public party kick params
func (o *PublicPartyKickParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public party kick params
func (o *PublicPartyKickParams) WithPartyID(partyID string) *PublicPartyKickParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public party kick params
func (o *PublicPartyKickParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the public party kick params
func (o *PublicPartyKickParams) WithUserID(userID string) *PublicPartyKickParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public party kick params
func (o *PublicPartyKickParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartyKickParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
