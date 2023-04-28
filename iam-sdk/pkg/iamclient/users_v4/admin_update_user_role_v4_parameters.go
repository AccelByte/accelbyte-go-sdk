// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewAdminUpdateUserRoleV4Params creates a new AdminUpdateUserRoleV4Params object
// with the default values initialized.
func NewAdminUpdateUserRoleV4Params() *AdminUpdateUserRoleV4Params {
	var ()
	return &AdminUpdateUserRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserRoleV4ParamsWithTimeout creates a new AdminUpdateUserRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserRoleV4ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserRoleV4Params {
	var ()
	return &AdminUpdateUserRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserRoleV4ParamsWithContext creates a new AdminUpdateUserRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserRoleV4ParamsWithContext(ctx context.Context) *AdminUpdateUserRoleV4Params {
	var ()
	return &AdminUpdateUserRoleV4Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserRoleV4ParamsWithHTTPClient creates a new AdminUpdateUserRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserRoleV4ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserRoleV4Params {
	var ()
	return &AdminUpdateUserRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserRoleV4Params contains all the parameters to send to the API endpoint
for the admin update user role v4 operation typically these are written to a http.Request
*/
type AdminUpdateUserRoleV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelAddUserRoleV4Request
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

// WithTimeout adds the timeout to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithTimeout(timeout time.Duration) *AdminUpdateUserRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithContext(ctx context.Context) *AdminUpdateUserRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithHTTPClient(client *http.Client) *AdminUpdateUserRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithBody(body *iamclientmodels.ModelAddUserRoleV4Request) *AdminUpdateUserRoleV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetBody(body *iamclientmodels.ModelAddUserRoleV4Request) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithNamespace(namespace string) *AdminUpdateUserRoleV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) WithUserID(userID string) *AdminUpdateUserRoleV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user role v4 params
func (o *AdminUpdateUserRoleV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
