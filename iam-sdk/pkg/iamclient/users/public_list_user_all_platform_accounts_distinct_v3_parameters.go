// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicListUserAllPlatformAccountsDistinctV3Params creates a new PublicListUserAllPlatformAccountsDistinctV3Params object
// with the default values initialized.
func NewPublicListUserAllPlatformAccountsDistinctV3Params() *PublicListUserAllPlatformAccountsDistinctV3Params {
	var ()
	return &PublicListUserAllPlatformAccountsDistinctV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithTimeout creates a new PublicListUserAllPlatformAccountsDistinctV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithTimeout(timeout time.Duration) *PublicListUserAllPlatformAccountsDistinctV3Params {
	var ()
	return &PublicListUserAllPlatformAccountsDistinctV3Params{

		timeout: timeout,
	}
}

// NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithContext creates a new PublicListUserAllPlatformAccountsDistinctV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithContext(ctx context.Context) *PublicListUserAllPlatformAccountsDistinctV3Params {
	var ()
	return &PublicListUserAllPlatformAccountsDistinctV3Params{

		Context: ctx,
	}
}

// NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithHTTPClient creates a new PublicListUserAllPlatformAccountsDistinctV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicListUserAllPlatformAccountsDistinctV3ParamsWithHTTPClient(client *http.Client) *PublicListUserAllPlatformAccountsDistinctV3Params {
	var ()
	return &PublicListUserAllPlatformAccountsDistinctV3Params{
		HTTPClient: client,
	}
}

/*PublicListUserAllPlatformAccountsDistinctV3Params contains all the parameters to send to the API endpoint
for the public list user all platform accounts distinct v3 operation typically these are written to a http.Request
*/
type PublicListUserAllPlatformAccountsDistinctV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen. Should match the one in the access token

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WithTimeout(timeout time.Duration) *PublicListUserAllPlatformAccountsDistinctV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WithContext(ctx context.Context) *PublicListUserAllPlatformAccountsDistinctV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WithHTTPClient(client *http.Client) *PublicListUserAllPlatformAccountsDistinctV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WithNamespace(namespace string) *PublicListUserAllPlatformAccountsDistinctV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WithUserID(userID string) *PublicListUserAllPlatformAccountsDistinctV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public list user all platform accounts distinct v3 params
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicListUserAllPlatformAccountsDistinctV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
