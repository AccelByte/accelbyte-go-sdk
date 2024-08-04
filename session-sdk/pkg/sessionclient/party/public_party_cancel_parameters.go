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

// NewPublicPartyCancelParams creates a new PublicPartyCancelParams object
// with the default values initialized.
func NewPublicPartyCancelParams() *PublicPartyCancelParams {
	var ()
	return &PublicPartyCancelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPartyCancelParamsWithTimeout creates a new PublicPartyCancelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPartyCancelParamsWithTimeout(timeout time.Duration) *PublicPartyCancelParams {
	var ()
	return &PublicPartyCancelParams{

		timeout: timeout,
	}
}

// NewPublicPartyCancelParamsWithContext creates a new PublicPartyCancelParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPartyCancelParamsWithContext(ctx context.Context) *PublicPartyCancelParams {
	var ()
	return &PublicPartyCancelParams{

		Context: ctx,
	}
}

// NewPublicPartyCancelParamsWithHTTPClient creates a new PublicPartyCancelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPartyCancelParamsWithHTTPClient(client *http.Client) *PublicPartyCancelParams {
	var ()
	return &PublicPartyCancelParams{
		HTTPClient: client,
	}
}

/*PublicPartyCancelParams contains all the parameters to send to the API endpoint
for the public party cancel operation typically these are written to a http.Request
*/
type PublicPartyCancelParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public party cancel params
func (o *PublicPartyCancelParams) WithTimeout(timeout time.Duration) *PublicPartyCancelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public party cancel params
func (o *PublicPartyCancelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public party cancel params
func (o *PublicPartyCancelParams) WithContext(ctx context.Context) *PublicPartyCancelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public party cancel params
func (o *PublicPartyCancelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public party cancel params
func (o *PublicPartyCancelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public party cancel params
func (o *PublicPartyCancelParams) WithHTTPClient(client *http.Client) *PublicPartyCancelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public party cancel params
func (o *PublicPartyCancelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public party cancel params
func (o *PublicPartyCancelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicPartyCancelParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public party cancel params
func (o *PublicPartyCancelParams) WithNamespace(namespace string) *PublicPartyCancelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public party cancel params
func (o *PublicPartyCancelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPartyID adds the partyID to the public party cancel params
func (o *PublicPartyCancelParams) WithPartyID(partyID string) *PublicPartyCancelParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the public party cancel params
func (o *PublicPartyCancelParams) SetPartyID(partyID string) {
	o.PartyID = partyID
}

// WithUserID adds the userID to the public party cancel params
func (o *PublicPartyCancelParams) WithUserID(userID string) *PublicPartyCancelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public party cancel params
func (o *PublicPartyCancelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPartyCancelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
