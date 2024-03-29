// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package friends

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

// NewUserGetFriendshipStatusParams creates a new UserGetFriendshipStatusParams object
// with the default values initialized.
func NewUserGetFriendshipStatusParams() *UserGetFriendshipStatusParams {
	var ()
	return &UserGetFriendshipStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUserGetFriendshipStatusParamsWithTimeout creates a new UserGetFriendshipStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUserGetFriendshipStatusParamsWithTimeout(timeout time.Duration) *UserGetFriendshipStatusParams {
	var ()
	return &UserGetFriendshipStatusParams{

		timeout: timeout,
	}
}

// NewUserGetFriendshipStatusParamsWithContext creates a new UserGetFriendshipStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewUserGetFriendshipStatusParamsWithContext(ctx context.Context) *UserGetFriendshipStatusParams {
	var ()
	return &UserGetFriendshipStatusParams{

		Context: ctx,
	}
}

// NewUserGetFriendshipStatusParamsWithHTTPClient creates a new UserGetFriendshipStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUserGetFriendshipStatusParamsWithHTTPClient(client *http.Client) *UserGetFriendshipStatusParams {
	var ()
	return &UserGetFriendshipStatusParams{
		HTTPClient: client,
	}
}

/*UserGetFriendshipStatusParams contains all the parameters to send to the API endpoint
for the user get friendship status operation typically these are written to a http.Request
*/
type UserGetFriendshipStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*FriendID
	  Friend ID

	*/
	FriendID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the user get friendship status params
func (o *UserGetFriendshipStatusParams) WithTimeout(timeout time.Duration) *UserGetFriendshipStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the user get friendship status params
func (o *UserGetFriendshipStatusParams) WithContext(ctx context.Context) *UserGetFriendshipStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the user get friendship status params
func (o *UserGetFriendshipStatusParams) WithHTTPClient(client *http.Client) *UserGetFriendshipStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UserGetFriendshipStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithFriendID adds the friendID to the user get friendship status params
func (o *UserGetFriendshipStatusParams) WithFriendID(friendID string) *UserGetFriendshipStatusParams {
	o.SetFriendID(friendID)
	return o
}

// SetFriendID adds the friendId to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetFriendID(friendID string) {
	o.FriendID = friendID
}

// WithNamespace adds the namespace to the user get friendship status params
func (o *UserGetFriendshipStatusParams) WithNamespace(namespace string) *UserGetFriendshipStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the user get friendship status params
func (o *UserGetFriendshipStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UserGetFriendshipStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param friendId
	if err := r.SetPathParam("friendId", o.FriendID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
