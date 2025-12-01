// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

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

// NewPublicUpdateInsertPartySessionStorageParams creates a new PublicUpdateInsertPartySessionStorageParams object
// with the default values initialized.
func NewPublicUpdateInsertPartySessionStorageParams() *PublicUpdateInsertPartySessionStorageParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateInsertPartySessionStorageParamsWithTimeout creates a new PublicUpdateInsertPartySessionStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateInsertPartySessionStorageParamsWithTimeout(timeout time.Duration) *PublicUpdateInsertPartySessionStorageParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageParams{

		timeout: timeout,
	}
}

// NewPublicUpdateInsertPartySessionStorageParamsWithContext creates a new PublicUpdateInsertPartySessionStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateInsertPartySessionStorageParamsWithContext(ctx context.Context) *PublicUpdateInsertPartySessionStorageParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageParams{

		Context: ctx,
	}
}

// NewPublicUpdateInsertPartySessionStorageParamsWithHTTPClient creates a new PublicUpdateInsertPartySessionStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateInsertPartySessionStorageParamsWithHTTPClient(client *http.Client) *PublicUpdateInsertPartySessionStorageParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageParams{
		HTTPClient: client,
	}
}

/*PublicUpdateInsertPartySessionStorageParams contains all the parameters to send to the API endpoint
for the public update insert party session storage operation typically these are written to a http.Request
*/
type PublicUpdateInsertPartySessionStorageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PartyID
	  partyID

	*/
	PartyID string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithTimeout(timeout time.Duration) *PublicUpdateInsertPartySessionStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithContext(ctx context.Context) *PublicUpdateInsertPartySessionStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithHTTPClient(client *http.Client) *PublicUpdateInsertPartySessionStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateInsertPartySessionStorageParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithBody(body map[string]interface{}) *PublicUpdateInsertPartySessionStorageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithNamespace(namespace string) *PublicUpdateInsertPartySessionStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithPartyID(partyID string) *PublicUpdateInsertPartySessionStorageParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) WithUserID(userID string) *PublicUpdateInsertPartySessionStorageParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update insert party session storage params
func (o *PublicUpdateInsertPartySessionStorageParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateInsertPartySessionStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
