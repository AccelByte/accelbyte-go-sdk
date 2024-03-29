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

// NewPublicCreateUserProfileParams creates a new PublicCreateUserProfileParams object
// with the default values initialized.
func NewPublicCreateUserProfileParams() *PublicCreateUserProfileParams {
	var ()
	return &PublicCreateUserProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicCreateUserProfileParamsWithTimeout creates a new PublicCreateUserProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicCreateUserProfileParamsWithTimeout(timeout time.Duration) *PublicCreateUserProfileParams {
	var ()
	return &PublicCreateUserProfileParams{

		timeout: timeout,
	}
}

// NewPublicCreateUserProfileParamsWithContext creates a new PublicCreateUserProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicCreateUserProfileParamsWithContext(ctx context.Context) *PublicCreateUserProfileParams {
	var ()
	return &PublicCreateUserProfileParams{

		Context: ctx,
	}
}

// NewPublicCreateUserProfileParamsWithHTTPClient creates a new PublicCreateUserProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicCreateUserProfileParamsWithHTTPClient(client *http.Client) *PublicCreateUserProfileParams {
	var ()
	return &PublicCreateUserProfileParams{
		HTTPClient: client,
	}
}

/*PublicCreateUserProfileParams contains all the parameters to send to the API endpoint
for the public create user profile operation typically these are written to a http.Request
*/
type PublicCreateUserProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileCreate
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

// WithTimeout adds the timeout to the public create user profile params
func (o *PublicCreateUserProfileParams) WithTimeout(timeout time.Duration) *PublicCreateUserProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public create user profile params
func (o *PublicCreateUserProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public create user profile params
func (o *PublicCreateUserProfileParams) WithContext(ctx context.Context) *PublicCreateUserProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public create user profile params
func (o *PublicCreateUserProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public create user profile params
func (o *PublicCreateUserProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public create user profile params
func (o *PublicCreateUserProfileParams) WithHTTPClient(client *http.Client) *PublicCreateUserProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public create user profile params
func (o *PublicCreateUserProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public create user profile params
func (o *PublicCreateUserProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicCreateUserProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public create user profile params
func (o *PublicCreateUserProfileParams) WithBody(body *basicclientmodels.UserProfileCreate) *PublicCreateUserProfileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public create user profile params
func (o *PublicCreateUserProfileParams) SetBody(body *basicclientmodels.UserProfileCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public create user profile params
func (o *PublicCreateUserProfileParams) WithNamespace(namespace string) *PublicCreateUserProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public create user profile params
func (o *PublicCreateUserProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public create user profile params
func (o *PublicCreateUserProfileParams) WithUserID(userID string) *PublicCreateUserProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public create user profile params
func (o *PublicCreateUserProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicCreateUserProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
