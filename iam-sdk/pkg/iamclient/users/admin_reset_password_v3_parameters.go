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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminResetPasswordV3Params creates a new AdminResetPasswordV3Params object
// with the default values initialized.
func NewAdminResetPasswordV3Params() *AdminResetPasswordV3Params {
	var ()
	return &AdminResetPasswordV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminResetPasswordV3ParamsWithTimeout creates a new AdminResetPasswordV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminResetPasswordV3ParamsWithTimeout(timeout time.Duration) *AdminResetPasswordV3Params {
	var ()
	return &AdminResetPasswordV3Params{

		timeout: timeout,
	}
}

// NewAdminResetPasswordV3ParamsWithContext creates a new AdminResetPasswordV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminResetPasswordV3ParamsWithContext(ctx context.Context) *AdminResetPasswordV3Params {
	var ()
	return &AdminResetPasswordV3Params{

		Context: ctx,
	}
}

// NewAdminResetPasswordV3ParamsWithHTTPClient creates a new AdminResetPasswordV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminResetPasswordV3ParamsWithHTTPClient(client *http.Client) *AdminResetPasswordV3Params {
	var ()
	return &AdminResetPasswordV3Params{
		HTTPClient: client,
	}
}

/*AdminResetPasswordV3Params contains all the parameters to send to the API endpoint
for the admin reset password v3 operation typically these are written to a http.Request
*/
type AdminResetPasswordV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserPasswordUpdateV3Request
	/*Namespace
	  Namespace, only accept alphabet and numeric

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
}

// WithTimeout adds the timeout to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithTimeout(timeout time.Duration) *AdminResetPasswordV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithContext(ctx context.Context) *AdminResetPasswordV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithHTTPClient(client *http.Client) *AdminResetPasswordV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithBody(body *iamclientmodels.ModelUserPasswordUpdateV3Request) *AdminResetPasswordV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetBody(body *iamclientmodels.ModelUserPasswordUpdateV3Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithNamespace(namespace string) *AdminResetPasswordV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) WithUserID(userID string) *AdminResetPasswordV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin reset password v3 params
func (o *AdminResetPasswordV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminResetPasswordV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
