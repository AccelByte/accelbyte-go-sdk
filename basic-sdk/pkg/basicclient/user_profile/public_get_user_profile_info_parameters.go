// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// NewPublicGetUserProfileInfoParams creates a new PublicGetUserProfileInfoParams object
// with the default values initialized.
func NewPublicGetUserProfileInfoParams() *PublicGetUserProfileInfoParams {
	var ()
	return &PublicGetUserProfileInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserProfileInfoParamsWithTimeout creates a new PublicGetUserProfileInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserProfileInfoParamsWithTimeout(timeout time.Duration) *PublicGetUserProfileInfoParams {
	var ()
	return &PublicGetUserProfileInfoParams{

		timeout: timeout,
	}
}

// NewPublicGetUserProfileInfoParamsWithContext creates a new PublicGetUserProfileInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserProfileInfoParamsWithContext(ctx context.Context) *PublicGetUserProfileInfoParams {
	var ()
	return &PublicGetUserProfileInfoParams{

		Context: ctx,
	}
}

// NewPublicGetUserProfileInfoParamsWithHTTPClient creates a new PublicGetUserProfileInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserProfileInfoParamsWithHTTPClient(client *http.Client) *PublicGetUserProfileInfoParams {
	var ()
	return &PublicGetUserProfileInfoParams{
		HTTPClient: client,
	}
}

/*PublicGetUserProfileInfoParams contains all the parameters to send to the API endpoint
for the public get user profile info operation typically these are written to a http.Request
*/
type PublicGetUserProfileInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) WithTimeout(timeout time.Duration) *PublicGetUserProfileInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) WithContext(ctx context.Context) *PublicGetUserProfileInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) WithHTTPClient(client *http.Client) *PublicGetUserProfileInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserProfileInfoParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) WithNamespace(namespace string) *PublicGetUserProfileInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) WithUserID(userID string) *PublicGetUserProfileInfoParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user profile info params
func (o *PublicGetUserProfileInfoParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserProfileInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
