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
)

// NewAdminGetUserByUserIDV3Params creates a new AdminGetUserByUserIDV3Params object
// with the default values initialized.
func NewAdminGetUserByUserIDV3Params() *AdminGetUserByUserIDV3Params {
	var ()
	return &AdminGetUserByUserIDV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserByUserIDV3ParamsWithTimeout creates a new AdminGetUserByUserIDV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserByUserIDV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserByUserIDV3Params {
	var ()
	return &AdminGetUserByUserIDV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserByUserIDV3ParamsWithContext creates a new AdminGetUserByUserIDV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserByUserIDV3ParamsWithContext(ctx context.Context) *AdminGetUserByUserIDV3Params {
	var ()
	return &AdminGetUserByUserIDV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserByUserIDV3ParamsWithHTTPClient creates a new AdminGetUserByUserIDV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserByUserIDV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserByUserIDV3Params {
	var ()
	return &AdminGetUserByUserIDV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserByUserIDV3Params contains all the parameters to send to the API endpoint
for the admin get user by user id v3 operation typically these are written to a http.Request
*/
type AdminGetUserByUserIDV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) WithTimeout(timeout time.Duration) *AdminGetUserByUserIDV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) WithContext(ctx context.Context) *AdminGetUserByUserIDV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) WithHTTPClient(client *http.Client) *AdminGetUserByUserIDV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) WithNamespace(namespace string) *AdminGetUserByUserIDV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) WithUserID(userID string) *AdminGetUserByUserIDV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user by user id v3 params
func (o *AdminGetUserByUserIDV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserByUserIDV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
