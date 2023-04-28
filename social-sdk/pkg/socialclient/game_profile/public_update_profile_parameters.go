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

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// NewPublicUpdateProfileParams creates a new PublicUpdateProfileParams object
// with the default values initialized.
func NewPublicUpdateProfileParams() *PublicUpdateProfileParams {
	var ()
	return &PublicUpdateProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateProfileParamsWithTimeout creates a new PublicUpdateProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateProfileParamsWithTimeout(timeout time.Duration) *PublicUpdateProfileParams {
	var ()
	return &PublicUpdateProfileParams{

		timeout: timeout,
	}
}

// NewPublicUpdateProfileParamsWithContext creates a new PublicUpdateProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateProfileParamsWithContext(ctx context.Context) *PublicUpdateProfileParams {
	var ()
	return &PublicUpdateProfileParams{

		Context: ctx,
	}
}

// NewPublicUpdateProfileParamsWithHTTPClient creates a new PublicUpdateProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateProfileParamsWithHTTPClient(client *http.Client) *PublicUpdateProfileParams {
	var ()
	return &PublicUpdateProfileParams{
		HTTPClient: client,
	}
}

/*PublicUpdateProfileParams contains all the parameters to send to the API endpoint
for the public update profile operation typically these are written to a http.Request
*/
type PublicUpdateProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *socialclientmodels.GameProfileRequest
	/*Namespace
	  Namespace ID

	*/
	Namespace string
	/*ProfileID
	  Game profile ID

	*/
	ProfileID string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update profile params
func (o *PublicUpdateProfileParams) WithTimeout(timeout time.Duration) *PublicUpdateProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update profile params
func (o *PublicUpdateProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update profile params
func (o *PublicUpdateProfileParams) WithContext(ctx context.Context) *PublicUpdateProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update profile params
func (o *PublicUpdateProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update profile params
func (o *PublicUpdateProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update profile params
func (o *PublicUpdateProfileParams) WithHTTPClient(client *http.Client) *PublicUpdateProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update profile params
func (o *PublicUpdateProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update profile params
func (o *PublicUpdateProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update profile params
func (o *PublicUpdateProfileParams) WithBody(body *socialclientmodels.GameProfileRequest) *PublicUpdateProfileParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update profile params
func (o *PublicUpdateProfileParams) SetBody(body *socialclientmodels.GameProfileRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update profile params
func (o *PublicUpdateProfileParams) WithNamespace(namespace string) *PublicUpdateProfileParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update profile params
func (o *PublicUpdateProfileParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithProfileID adds the profileID to the public update profile params
func (o *PublicUpdateProfileParams) WithProfileID(profileID string) *PublicUpdateProfileParams {
	o.SetProfileID(profileID)
	return o
}

// SetProfileID adds the profileId to the public update profile params
func (o *PublicUpdateProfileParams) SetProfileID(profileID string) {
	o.ProfileID = profileID
}

// WithUserID adds the userID to the public update profile params
func (o *PublicUpdateProfileParams) WithUserID(userID string) *PublicUpdateProfileParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update profile params
func (o *PublicUpdateProfileParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param profileId
	if err := r.SetPathParam("profileId", o.ProfileID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
