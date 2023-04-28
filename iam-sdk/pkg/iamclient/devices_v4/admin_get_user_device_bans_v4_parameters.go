// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package devices_v4

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

// NewAdminGetUserDeviceBansV4Params creates a new AdminGetUserDeviceBansV4Params object
// with the default values initialized.
func NewAdminGetUserDeviceBansV4Params() *AdminGetUserDeviceBansV4Params {
	var ()
	return &AdminGetUserDeviceBansV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserDeviceBansV4ParamsWithTimeout creates a new AdminGetUserDeviceBansV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserDeviceBansV4ParamsWithTimeout(timeout time.Duration) *AdminGetUserDeviceBansV4Params {
	var ()
	return &AdminGetUserDeviceBansV4Params{

		timeout: timeout,
	}
}

// NewAdminGetUserDeviceBansV4ParamsWithContext creates a new AdminGetUserDeviceBansV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserDeviceBansV4ParamsWithContext(ctx context.Context) *AdminGetUserDeviceBansV4Params {
	var ()
	return &AdminGetUserDeviceBansV4Params{

		Context: ctx,
	}
}

// NewAdminGetUserDeviceBansV4ParamsWithHTTPClient creates a new AdminGetUserDeviceBansV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserDeviceBansV4ParamsWithHTTPClient(client *http.Client) *AdminGetUserDeviceBansV4Params {
	var ()
	return &AdminGetUserDeviceBansV4Params{
		HTTPClient: client,
	}
}

/*AdminGetUserDeviceBansV4Params contains all the parameters to send to the API endpoint
for the admin get user device bans v4 operation typically these are written to a http.Request
*/
type AdminGetUserDeviceBansV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) WithTimeout(timeout time.Duration) *AdminGetUserDeviceBansV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) WithContext(ctx context.Context) *AdminGetUserDeviceBansV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) WithHTTPClient(client *http.Client) *AdminGetUserDeviceBansV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) WithNamespace(namespace string) *AdminGetUserDeviceBansV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) WithUserID(userID string) *AdminGetUserDeviceBansV4Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user device bans v4 params
func (o *AdminGetUserDeviceBansV4Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserDeviceBansV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param userId
	qrUserID := o.UserID
	qUserID := qrUserID
	if qUserID != "" {
		if err := r.SetQueryParam("userId", qUserID); err != nil {
			return err
		}
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
