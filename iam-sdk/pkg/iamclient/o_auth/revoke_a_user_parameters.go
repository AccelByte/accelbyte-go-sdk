// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// NewRevokeAUserParams creates a new RevokeAUserParams object
// with the default values initialized.
func NewRevokeAUserParams() *RevokeAUserParams {
	var ()
	return &RevokeAUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeAUserParamsWithTimeout creates a new RevokeAUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeAUserParamsWithTimeout(timeout time.Duration) *RevokeAUserParams {
	var ()
	return &RevokeAUserParams{

		timeout: timeout,
	}
}

// NewRevokeAUserParamsWithContext creates a new RevokeAUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeAUserParamsWithContext(ctx context.Context) *RevokeAUserParams {
	var ()
	return &RevokeAUserParams{

		Context: ctx,
	}
}

// NewRevokeAUserParamsWithHTTPClient creates a new RevokeAUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeAUserParamsWithHTTPClient(client *http.Client) *RevokeAUserParams {
	var ()
	return &RevokeAUserParams{
		HTTPClient: client,
	}
}

/*RevokeAUserParams contains all the parameters to send to the API endpoint
for the revoke a user operation typically these are written to a http.Request
*/
type RevokeAUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*UserID
	  User to be revoked

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the revoke a user params
func (o *RevokeAUserParams) WithTimeout(timeout time.Duration) *RevokeAUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke a user params
func (o *RevokeAUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke a user params
func (o *RevokeAUserParams) WithContext(ctx context.Context) *RevokeAUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke a user params
func (o *RevokeAUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke a user params
func (o *RevokeAUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke a user params
func (o *RevokeAUserParams) WithHTTPClient(client *http.Client) *RevokeAUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke a user params
func (o *RevokeAUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke a user params
func (o *RevokeAUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RevokeAUserParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithUserID adds the userID to the revoke a user params
func (o *RevokeAUserParams) WithUserID(userID string) *RevokeAUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the revoke a user params
func (o *RevokeAUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeAUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param userID
	frUserID := o.UserID
	fUserID := frUserID
	if fUserID != "" {
		if err := r.SetFormParam("userID", fUserID); err != nil {
			return err
		}
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
