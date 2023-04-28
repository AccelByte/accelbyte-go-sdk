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
	"github.com/go-openapi/swag"
)

// NewAdminListUsersV3Params creates a new AdminListUsersV3Params object
// with the default values initialized.
func NewAdminListUsersV3Params() *AdminListUsersV3Params {
	var ()
	return &AdminListUsersV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListUsersV3ParamsWithTimeout creates a new AdminListUsersV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListUsersV3ParamsWithTimeout(timeout time.Duration) *AdminListUsersV3Params {
	var ()
	return &AdminListUsersV3Params{

		timeout: timeout,
	}
}

// NewAdminListUsersV3ParamsWithContext creates a new AdminListUsersV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListUsersV3ParamsWithContext(ctx context.Context) *AdminListUsersV3Params {
	var ()
	return &AdminListUsersV3Params{

		Context: ctx,
	}
}

// NewAdminListUsersV3ParamsWithHTTPClient creates a new AdminListUsersV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListUsersV3ParamsWithHTTPClient(client *http.Client) *AdminListUsersV3Params {
	var ()
	return &AdminListUsersV3Params{
		HTTPClient: client,
	}
}

/*AdminListUsersV3Params contains all the parameters to send to the API endpoint
for the admin list users v3 operation typically these are written to a http.Request
*/
type AdminListUsersV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Limit
	  number of returned data, default 100

	*/
	Limit *int64
	/*Offset
	  number of offset, default 0

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list users v3 params
func (o *AdminListUsersV3Params) WithTimeout(timeout time.Duration) *AdminListUsersV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list users v3 params
func (o *AdminListUsersV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list users v3 params
func (o *AdminListUsersV3Params) WithContext(ctx context.Context) *AdminListUsersV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list users v3 params
func (o *AdminListUsersV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list users v3 params
func (o *AdminListUsersV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list users v3 params
func (o *AdminListUsersV3Params) WithHTTPClient(client *http.Client) *AdminListUsersV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list users v3 params
func (o *AdminListUsersV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list users v3 params
func (o *AdminListUsersV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list users v3 params
func (o *AdminListUsersV3Params) WithNamespace(namespace string) *AdminListUsersV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list users v3 params
func (o *AdminListUsersV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list users v3 params
func (o *AdminListUsersV3Params) WithLimit(limit *int64) *AdminListUsersV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list users v3 params
func (o *AdminListUsersV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list users v3 params
func (o *AdminListUsersV3Params) WithOffset(offset *int64) *AdminListUsersV3Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list users v3 params
func (o *AdminListUsersV3Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListUsersV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
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
