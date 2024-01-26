// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

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

// NewGetUserProfilesParams creates a new GetUserProfilesParams object
// with the default values initialized.
func NewGetUserProfilesParams() *GetUserProfilesParams {
	var ()
	return &GetUserProfilesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserProfilesParamsWithTimeout creates a new GetUserProfilesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserProfilesParamsWithTimeout(timeout time.Duration) *GetUserProfilesParams {
	var ()
	return &GetUserProfilesParams{

		timeout: timeout,
	}
}

// NewGetUserProfilesParamsWithContext creates a new GetUserProfilesParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserProfilesParamsWithContext(ctx context.Context) *GetUserProfilesParams {
	var ()
	return &GetUserProfilesParams{

		Context: ctx,
	}
}

// NewGetUserProfilesParamsWithHTTPClient creates a new GetUserProfilesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserProfilesParamsWithHTTPClient(client *http.Client) *GetUserProfilesParams {
	var ()
	return &GetUserProfilesParams{
		HTTPClient: client,
	}
}

/*GetUserProfilesParams contains all the parameters to send to the API endpoint
for the get user profiles operation typically these are written to a http.Request
*/
type GetUserProfilesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace ID

	*/
	Namespace string
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

// WithTimeout adds the timeout to the get user profiles params
func (o *GetUserProfilesParams) WithTimeout(timeout time.Duration) *GetUserProfilesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user profiles params
func (o *GetUserProfilesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user profiles params
func (o *GetUserProfilesParams) WithContext(ctx context.Context) *GetUserProfilesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user profiles params
func (o *GetUserProfilesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user profiles params
func (o *GetUserProfilesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user profiles params
func (o *GetUserProfilesParams) WithHTTPClient(client *http.Client) *GetUserProfilesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user profiles params
func (o *GetUserProfilesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user profiles params
func (o *GetUserProfilesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserProfilesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user profiles params
func (o *GetUserProfilesParams) WithNamespace(namespace string) *GetUserProfilesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user profiles params
func (o *GetUserProfilesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user profiles params
func (o *GetUserProfilesParams) WithUserID(userID string) *GetUserProfilesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user profiles params
func (o *GetUserProfilesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserProfilesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
