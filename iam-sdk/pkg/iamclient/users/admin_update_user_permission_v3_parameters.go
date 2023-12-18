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

// NewAdminUpdateUserPermissionV3Params creates a new AdminUpdateUserPermissionV3Params object
// with the default values initialized.
func NewAdminUpdateUserPermissionV3Params() *AdminUpdateUserPermissionV3Params {
	var ()
	return &AdminUpdateUserPermissionV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateUserPermissionV3ParamsWithTimeout creates a new AdminUpdateUserPermissionV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateUserPermissionV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateUserPermissionV3Params {
	var ()
	return &AdminUpdateUserPermissionV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateUserPermissionV3ParamsWithContext creates a new AdminUpdateUserPermissionV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateUserPermissionV3ParamsWithContext(ctx context.Context) *AdminUpdateUserPermissionV3Params {
	var ()
	return &AdminUpdateUserPermissionV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateUserPermissionV3ParamsWithHTTPClient creates a new AdminUpdateUserPermissionV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateUserPermissionV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateUserPermissionV3Params {
	var ()
	return &AdminUpdateUserPermissionV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateUserPermissionV3Params contains all the parameters to send to the API endpoint
for the admin update user permission v3 operation typically these are written to a http.Request
*/
type AdminUpdateUserPermissionV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountcommonPermissions
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithTimeout(timeout time.Duration) *AdminUpdateUserPermissionV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithContext(ctx context.Context) *AdminUpdateUserPermissionV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithHTTPClient(client *http.Client) *AdminUpdateUserPermissionV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithBody(body *iamclientmodels.AccountcommonPermissions) *AdminUpdateUserPermissionV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetBody(body *iamclientmodels.AccountcommonPermissions) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithNamespace(namespace string) *AdminUpdateUserPermissionV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) WithUserID(userID string) *AdminUpdateUserPermissionV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin update user permission v3 params
func (o *AdminUpdateUserPermissionV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateUserPermissionV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
