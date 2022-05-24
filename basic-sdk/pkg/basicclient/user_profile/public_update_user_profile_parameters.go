// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package user_profile

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewPublicUpdateUserProfileParams creates a new PublicUpdateUserProfileParams object
// with the default values initialized.
func NewPublicUpdateUserProfileParams() *PublicUpdateUserProfileParams {
	var ()
	return &PublicUpdateUserProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateUserProfileParamsWithTimeout creates a new PublicUpdateUserProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateUserProfileParamsWithTimeout(timeout time.Duration) *PublicUpdateUserProfileParams {
	var ()
	return &PublicUpdateUserProfileParams{

		timeout: timeout,
	}
}

// NewPublicUpdateUserProfileParamsWithContext creates a new PublicUpdateUserProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateUserProfileParamsWithContext(ctx context.Context) *PublicUpdateUserProfileParams {
	var ()
	return &PublicUpdateUserProfileParams{

		Context: ctx,
	}
}

// NewPublicUpdateUserProfileParamsWithHTTPClient creates a new PublicUpdateUserProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateUserProfileParamsWithHTTPClient(client *http.Client) *PublicUpdateUserProfileParams {
	var ()
	return &PublicUpdateUserProfileParams{
		HTTPClient: client,
	}
}

/*PublicUpdateUserProfileParams contains all the parameters to send to the API endpoint
for the public update user profile operation typically these are written to a http.Request
*/
type PublicUpdateUserProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserProfileUpdate
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
}

// WithTimeout adds the timeout to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithTimeout(timeout time.Duration) *PublicUpdateUserProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithContext(ctx context.Context) *PublicUpdateUserProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithHTTPClient(client *http.Client) *PublicUpdateUserProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithBody(body *basicclientmodels.UserProfileUpdate) *PublicUpdateUserProfileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetBody(body *basicclientmodels.UserProfileUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithNamespace(namespace string) *PublicUpdateUserProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public update user profile params
func (o *PublicUpdateUserProfileParams) WithUserID(userID string) *PublicUpdateUserProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update user profile params
func (o *PublicUpdateUserProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateUserProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
