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

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewUpdateUserProfileStatusParams creates a new UpdateUserProfileStatusParams object
// with the default values initialized.
func NewUpdateUserProfileStatusParams() *UpdateUserProfileStatusParams {
	var ()
	return &UpdateUserProfileStatusParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateUserProfileStatusParamsWithTimeout creates a new UpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateUserProfileStatusParamsWithTimeout(timeout time.Duration) *UpdateUserProfileStatusParams {
	var ()
	return &UpdateUserProfileStatusParams{

		timeout: timeout,
	}
}

// NewUpdateUserProfileStatusParamsWithContext creates a new UpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateUserProfileStatusParamsWithContext(ctx context.Context) *UpdateUserProfileStatusParams {
	var ()
	return &UpdateUserProfileStatusParams{

		Context: ctx,
	}
}

// NewUpdateUserProfileStatusParamsWithHTTPClient creates a new UpdateUserProfileStatusParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateUserProfileStatusParamsWithHTTPClient(client *http.Client) *UpdateUserProfileStatusParams {
	var ()
	return &UpdateUserProfileStatusParams{
		HTTPClient: client,
	}
}

/*UpdateUserProfileStatusParams contains all the parameters to send to the API endpoint
for the update user profile status operation typically these are written to a http.Request
*/
type UpdateUserProfileStatusParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileStatusUpdate
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

// WithTimeout adds the timeout to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithTimeout(timeout time.Duration) *UpdateUserProfileStatusParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithContext(ctx context.Context) *UpdateUserProfileStatusParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithHTTPClient(client *http.Client) *UpdateUserProfileStatusParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateUserProfileStatusParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithBody(body *basicclientmodels.UserProfileStatusUpdate) *UpdateUserProfileStatusParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetBody(body *basicclientmodels.UserProfileStatusUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithNamespace(namespace string) *UpdateUserProfileStatusParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the update user profile status params
func (o *UpdateUserProfileStatusParams) WithUserID(userID string) *UpdateUserProfileStatusParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the update user profile status params
func (o *UpdateUserProfileStatusParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateUserProfileStatusParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
