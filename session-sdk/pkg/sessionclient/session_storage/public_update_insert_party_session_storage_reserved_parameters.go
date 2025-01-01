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

// NewPublicUpdateInsertPartySessionStorageReservedParams creates a new PublicUpdateInsertPartySessionStorageReservedParams object
// with the default values initialized.
func NewPublicUpdateInsertPartySessionStorageReservedParams() *PublicUpdateInsertPartySessionStorageReservedParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageReservedParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateInsertPartySessionStorageReservedParamsWithTimeout creates a new PublicUpdateInsertPartySessionStorageReservedParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateInsertPartySessionStorageReservedParamsWithTimeout(timeout time.Duration) *PublicUpdateInsertPartySessionStorageReservedParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageReservedParams{

		timeout: timeout,
	}
}

// NewPublicUpdateInsertPartySessionStorageReservedParamsWithContext creates a new PublicUpdateInsertPartySessionStorageReservedParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateInsertPartySessionStorageReservedParamsWithContext(ctx context.Context) *PublicUpdateInsertPartySessionStorageReservedParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageReservedParams{

		Context: ctx,
	}
}

// NewPublicUpdateInsertPartySessionStorageReservedParamsWithHTTPClient creates a new PublicUpdateInsertPartySessionStorageReservedParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateInsertPartySessionStorageReservedParamsWithHTTPClient(client *http.Client) *PublicUpdateInsertPartySessionStorageReservedParams {
	var ()
	return &PublicUpdateInsertPartySessionStorageReservedParams{
		HTTPClient: client,
	}
}

/*PublicUpdateInsertPartySessionStorageReservedParams contains all the parameters to send to the API endpoint
for the public update insert party session storage reserved operation typically these are written to a http.Request
*/
type PublicUpdateInsertPartySessionStorageReservedParams struct {

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

// WithTimeout adds the timeout to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithTimeout(timeout time.Duration) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithContext(ctx context.Context) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithHTTPClient(client *http.Client) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithBody(body map[string]interface{}) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithNamespace(namespace string) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithPartyID(partyID string) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WithUserID(userID string) *PublicUpdateInsertPartySessionStorageReservedParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update insert party session storage reserved params
func (o *PublicUpdateInsertPartySessionStorageReservedParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateInsertPartySessionStorageReservedParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
